import 'dart:convert';

import 'package:dio/dio.dart';
import '../../../../_shared/thietlap_api.dart';
import '../../../../core/services/api/dio_client.dart';
import '../models/product_model.dart';

class ProductRepositories{
  final DioClient _dioClient = DioClient(Dio());

  Future<List<ProductModel>> getAllProduct({String? id}) async {

    List<ProductModel> result = [];
    Response response;
    if(id!=null){
      response = await _dioClient.get("${Apis.productInCategory}?id_list=$id");
    }else{
      response = await _dioClient.get(Apis.product);
    }

    if(response.statusCode == 200){
      final data = jsonDecode(response.data)['data'];
      for(var item in data){
        result.add(ProductModel.fromJson(item));
      }
    }
    return result;
  }
}