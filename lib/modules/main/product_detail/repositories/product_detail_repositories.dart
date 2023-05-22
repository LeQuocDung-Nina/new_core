import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:new_core/core/services/api/dio_client.dart';

import '../../../../_shared/thietlap_api.dart';
import '../models/product_model.dart';

class ProductDetailRepositories{
  final DioClient _dioClient = DioClient(Dio());

  Future<ProductModel?> getProduct({required int id}) async {
    ProductModel? product;
    final response = await _dioClient.get("${Apis.productDetail}?id=$id");

    if (response.statusCode == 200) {
      final data = jsonDecode(response.data)['data'];
      // print("datadatadata ${ProductModel.fromJson(data[0])}");

      if (data.isNotEmpty) {

        product = ProductModel.fromJson(data[0]);

      }
    }
    return product;
  }
}

