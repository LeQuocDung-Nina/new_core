// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductListModel _$ProductListModelFromJson(Map<String, dynamic> json) {
  return _ProductListModel.fromJson(json);
}

/// @nodoc
mixin _$ProductListModel {
  String? get id => throw _privateConstructorUsedError;
  String? get namevi => throw _privateConstructorUsedError;
  String? get descvi => throw _privateConstructorUsedError;
  String? get photo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductListModelCopyWith<ProductListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductListModelCopyWith<$Res> {
  factory $ProductListModelCopyWith(
          ProductListModel value, $Res Function(ProductListModel) then) =
      _$ProductListModelCopyWithImpl<$Res, ProductListModel>;
  @useResult
  $Res call({String? id, String? namevi, String? descvi, String? photo});
}

/// @nodoc
class _$ProductListModelCopyWithImpl<$Res, $Val extends ProductListModel>
    implements $ProductListModelCopyWith<$Res> {
  _$ProductListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? namevi = freezed,
    Object? descvi = freezed,
    Object? photo = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      namevi: freezed == namevi
          ? _value.namevi
          : namevi // ignore: cast_nullable_to_non_nullable
              as String?,
      descvi: freezed == descvi
          ? _value.descvi
          : descvi // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductListModelCopyWith<$Res>
    implements $ProductListModelCopyWith<$Res> {
  factory _$$_ProductListModelCopyWith(
          _$_ProductListModel value, $Res Function(_$_ProductListModel) then) =
      __$$_ProductListModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? namevi, String? descvi, String? photo});
}

/// @nodoc
class __$$_ProductListModelCopyWithImpl<$Res>
    extends _$ProductListModelCopyWithImpl<$Res, _$_ProductListModel>
    implements _$$_ProductListModelCopyWith<$Res> {
  __$$_ProductListModelCopyWithImpl(
      _$_ProductListModel _value, $Res Function(_$_ProductListModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? namevi = freezed,
    Object? descvi = freezed,
    Object? photo = freezed,
  }) {
    return _then(_$_ProductListModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      namevi: freezed == namevi
          ? _value.namevi
          : namevi // ignore: cast_nullable_to_non_nullable
              as String?,
      descvi: freezed == descvi
          ? _value.descvi
          : descvi // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductListModel implements _ProductListModel {
  _$_ProductListModel({required this.id, this.namevi, this.descvi, this.photo});

  factory _$_ProductListModel.fromJson(Map<String, dynamic> json) =>
      _$$_ProductListModelFromJson(json);

  @override
  final String? id;
  @override
  final String? namevi;
  @override
  final String? descvi;
  @override
  final String? photo;

  @override
  String toString() {
    return 'ProductListModel(id: $id, namevi: $namevi, descvi: $descvi, photo: $photo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductListModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.namevi, namevi) || other.namevi == namevi) &&
            (identical(other.descvi, descvi) || other.descvi == descvi) &&
            (identical(other.photo, photo) || other.photo == photo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, namevi, descvi, photo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductListModelCopyWith<_$_ProductListModel> get copyWith =>
      __$$_ProductListModelCopyWithImpl<_$_ProductListModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductListModelToJson(
      this,
    );
  }
}

abstract class _ProductListModel implements ProductListModel {
  factory _ProductListModel(
      {required final String? id,
      final String? namevi,
      final String? descvi,
      final String? photo}) = _$_ProductListModel;

  factory _ProductListModel.fromJson(Map<String, dynamic> json) =
      _$_ProductListModel.fromJson;

  @override
  String? get id;
  @override
  String? get namevi;
  @override
  String? get descvi;
  @override
  String? get photo;
  @override
  @JsonKey(ignore: true)
  _$$_ProductListModelCopyWith<_$_ProductListModel> get copyWith =>
      throw _privateConstructorUsedError;
}
