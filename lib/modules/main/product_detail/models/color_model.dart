import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'color_model.freezed.dart';
part 'color_model.g.dart';

@freezed
class ColorModel with _$ColorModel {
  const factory ColorModel({
    required final String id,
    final String? color,
    final String? namevi,
  }) = _ColorModel;



  factory ColorModel.fromJson(Map<String, dynamic> json) =>
      _$ColorModelFromJson(json);
}