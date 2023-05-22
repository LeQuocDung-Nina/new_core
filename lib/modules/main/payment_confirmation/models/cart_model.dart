import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


part 'cart_model.freezed.dart';
part 'cart_model.g.dart';

@freezed
class CartModel with _$CartModel {
  const factory CartModel({
    required final String id,
    final String? colorTemp,
    final String? sizeTemp,
    @Default(1) final int quantity,
  }) = _CartModel;



  factory CartModel.fromJson(Map<String, dynamic> json) =>
      _$CartModelFromJson(json);
}