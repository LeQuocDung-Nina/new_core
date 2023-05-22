import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_list_model.freezed.dart';
part 'product_list_model.g.dart';
@freezed
class ProductListModel with _$ProductListModel {
  factory ProductListModel({
    required String? id,
    String? namevi,
    String? descvi,
    String? photo,
  }) = _ProductListModel;

  factory ProductListModel.fromJson(Map<String, Object?> json)
  => _$ProductListModelFromJson(json);
}





