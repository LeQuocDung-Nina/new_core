import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'rating_model.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
class ProductModel with _$ProductModel {
  const factory ProductModel({
    required final String id,
    final String? namevi,
    final String? descvi,
    final String? regular_price,
    final String? sale_price,
    final String? discount,
    final String? id_list,
    final String? photo,

    @Default(false) final bool isFavourite,
  }) = _ProductModel;



  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
}