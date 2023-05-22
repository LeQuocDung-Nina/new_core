import 'dart:convert';

import 'package:dio/dio.dart';
import '../../../../_shared/thietlap_api.dart';
import '../../../../core/services/api/dio_client.dart';
import '../models/product_list_model.dart';
import '../models/product_model.dart';

class ProductRepositories{
  final DioClient _dioClient = DioClient(Dio());

  Future<List<ProductModel>> getAllProduct() async {
    List<ProductModel> result = [];
    Response response;

    response = await _dioClient.get(Apis.product);

    if(response.statusCode == 200){
      final data = jsonDecode(response.data)['data'];
      for(var item in data){
        result.add(ProductModel.fromJson(item));
      }
    }
    return result;
  }
  Future<List<ProductListModel>> getAllCategories() async {
    List<ProductListModel> result = [];
    final response = await _dioClient.get(Apis.listCategories);


    if(response.statusCode == 200){
      final data = jsonDecode(response.data)['data'];
      for(var item in data){
        result.add(ProductListModel.fromJson(item));
      }
      // for(var item in data){
      //   /// vì item là dạng String nên không sử dụng .fromJson
      //   result.add(CategoryModel(namevi: item));
      // }
    }
    return result;
  }
}