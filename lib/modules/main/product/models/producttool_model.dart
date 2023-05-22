
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'producttool_model.freezed.dart';
part 'producttool_model.g.dart';

// **************************************************************************
// Đây là nội dung được tạo tự động bằng NextDEV Tool
// Đề nghị không chỉnh sửa nội dung file này
// Hãy đảm bảo các gói này được thêm vào file pubspec.yaml
// dependencies: 
// 	freezed_annotation: <lastest_version>
// 	json_annotation: <lastest_version>
// dev_dependencies:
// 	build_runner: <lastest_version>
// 	freezed: <lastest_version>
// 	json_serializable: <lastest_version>
// Bằng câu lệnh : 
// 	flutter pub add freezed_annotation json_annotation
// 	flutter pub add build_runner freezed json_serializable --dev
// Chạy câu lệnh sau để build file freezed:
// 	flutter pub run build_runner build
// Version : 1.0.1 Beta
// **************************************************************************

@freezed
class ProductToolModel with _$ProductToolModel {
	const factory ProductToolModel({ 
		@JsonKey(name: '_id') @required String? id,
		String? code,
		@JsonKey(name: 'info') L1_info? l1_info,
		int? quantity,
		int? priceOriginal,
		int? priceRegular,
		@JsonKey(name: 'attributes') L1_attributes? l1_attributes,
		List<dynamic>? categories,
		String? image,
		String? stocks,
		String? status,
		String? visibility,
		String? author,
		String? createdAt,
		String? updatedAt,
		@JsonKey(name: '__v') int? dataversion,
		List<dynamic>? reviews}) = _ProductToolModel;

	factory ProductToolModel.fromJson(Map<String, dynamic> json) => _$ProductToolModelFromJson(json);
}

@freezed
class L1_info with _$L1_info {
	const factory L1_info({ 
		@JsonKey(name: 'vi') L2_vi? l2_vi,
		@JsonKey(name: 'en') L2_en? l2_en}) = _L1_info;

	factory L1_info.fromJson(Map<String, dynamic> json) => _$L1_infoFromJson(json);
}

@freezed
class L1_attributes with _$L1_attributes {
	const factory L1_attributes({ 
		List<dynamic>? size,
		List<dynamic>? color}) = _L1_attributes;

	factory L1_attributes.fromJson(Map<String, dynamic> json) => _$L1_attributesFromJson(json);
}

@freezed
class L2_vi with _$L2_vi {
	const factory L2_vi({ 
		String? name,
		String? description,
		String? content,
		String? slug}) = _L2_vi;

	factory L2_vi.fromJson(Map<String, dynamic> json) => _$L2_viFromJson(json);
}

@freezed
class L2_en with _$L2_en {
	const factory L2_en({ 
		String? name,
		String? description,
		String? content,
		String? slug}) = _L2_en;

	factory L2_en.fromJson(Map<String, dynamic> json) => _$L2_enFromJson(json);
}

