import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:new_core/modules/main/product_categories/models/category_model.dart';

import '../../../../_shared/thietlap_api.dart';
import '../../../../core/services/api/dio_client.dart';

class CategoryRepository{
  final DioClient _dioClient = DioClient(Dio());

  Future<List<CategoryModel>> getAllCategories() async {
    List<CategoryModel> result = [];
    final response = await _dioClient.get(Apis.listCategories);


    if(response.statusCode == 200){
      final data = jsonDecode(response.data)['data'];
      for(var item in data){
        result.add(CategoryModel.fromJson(item));
      }
      // for(var item in data){
      //   /// vì item là dạng String nên không sử dụng .fromJson
      //   result.add(CategoryModel(namevi: item));
      // }
    }
    return result;
  }
}