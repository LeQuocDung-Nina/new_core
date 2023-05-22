import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'size_model.freezed.dart';
part 'size_model.g.dart';

@freezed
class SizeModel with _$SizeModel {
  const factory SizeModel({
    required final String id,
    final String? namevi,
  }) = _SizeModel;



  factory SizeModel.fromJson(Map<String, dynamic> json) =>
      _$SizeModelFromJson(json);
}