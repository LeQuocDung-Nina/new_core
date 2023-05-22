import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:new_core/modules/main/product/models/rating_model.dart';

import 'color_model.dart';
import 'size_model.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';


@freezed
class ProductModel with _$ProductModel {
  const factory ProductModel({
    required final String id,
    final String? namevi,
    final String? descvi,
    final String? contentvi,
    final String? regular_price,
    final String? sale_price,
    final String? discount,
    final List<SizeModel>? size,
    final List<ColorModel>? color,
    final String? id_list,
    final String? photo,

    @Default(false) final bool isFavourite,
  }) = _ProductModel;



  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
}