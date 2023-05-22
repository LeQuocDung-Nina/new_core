import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


part 'cart_temp.freezed.dart';
part 'cart_temp.g.dart';

@freezed
class CartTemp with _$CartTemp {
  const factory CartTemp({
    required final String id,
    final String? namevi,
    final String? regular_price,
    final String? sale_price,
    final String? discount,
    final String? id_list,
    final String? photo,
    @Default(1) final int quantity,
    @Default("") final String colorTemp,
    @Default("") final String sizeTemp,
  }) = _CartTemp;
  factory CartTemp.fromJson(Map<String, dynamic> json) =>
      _$CartTempFromJson(json);
}

