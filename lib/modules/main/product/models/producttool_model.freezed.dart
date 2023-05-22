// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'producttool_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductToolModel _$ProductToolModelFromJson(Map<String, dynamic> json) {
  return _ProductToolModel.fromJson(json);
}

/// @nodoc
mixin _$ProductToolModel {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'info')
  L1_info? get l1_info => throw _privateConstructorUsedError;
  int? get quantity => throw _privateConstructorUsedError;
  int? get priceOriginal => throw _privateConstructorUsedError;
  int? get priceRegular => throw _privateConstructorUsedError;
  @JsonKey(name: 'attributes')
  L1_attributes? get l1_attributes => throw _privateConstructorUsedError;
  List<dynamic>? get categories => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get stocks => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get visibility => throw _privateConstructorUsedError;
  String? get author => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: '__v')
  int? get dataversion => throw _privateConstructorUsedError;
  List<dynamic>? get reviews => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductToolModelCopyWith<ProductToolModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductToolModelCopyWith<$Res> {
  factory $ProductToolModelCopyWith(
          ProductToolModel value, $Res Function(ProductToolModel) then) =
      _$ProductToolModelCopyWithImpl<$Res, ProductToolModel>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
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
      List<dynamic>? reviews});

  $L1_infoCopyWith<$Res>? get l1_info;
  $L1_attributesCopyWith<$Res>? get l1_attributes;
}

/// @nodoc
class _$ProductToolModelCopyWithImpl<$Res, $Val extends ProductToolModel>
    implements $ProductToolModelCopyWith<$Res> {
  _$ProductToolModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? l1_info = freezed,
    Object? quantity = freezed,
    Object? priceOriginal = freezed,
    Object? priceRegular = freezed,
    Object? l1_attributes = freezed,
    Object? categories = freezed,
    Object? image = freezed,
    Object? stocks = freezed,
    Object? status = freezed,
    Object? visibility = freezed,
    Object? author = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? dataversion = freezed,
    Object? reviews = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      l1_info: freezed == l1_info
          ? _value.l1_info
          : l1_info // ignore: cast_nullable_to_non_nullable
              as L1_info?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      priceOriginal: freezed == priceOriginal
          ? _value.priceOriginal
          : priceOriginal // ignore: cast_nullable_to_non_nullable
              as int?,
      priceRegular: freezed == priceRegular
          ? _value.priceRegular
          : priceRegular // ignore: cast_nullable_to_non_nullable
              as int?,
      l1_attributes: freezed == l1_attributes
          ? _value.l1_attributes
          : l1_attributes // ignore: cast_nullable_to_non_nullable
              as L1_attributes?,
      categories: freezed == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      stocks: freezed == stocks
          ? _value.stocks
          : stocks // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      visibility: freezed == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as String?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      dataversion: freezed == dataversion
          ? _value.dataversion
          : dataversion // ignore: cast_nullable_to_non_nullable
              as int?,
      reviews: freezed == reviews
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $L1_infoCopyWith<$Res>? get l1_info {
    if (_value.l1_info == null) {
      return null;
    }

    return $L1_infoCopyWith<$Res>(_value.l1_info!, (value) {
      return _then(_value.copyWith(l1_info: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $L1_attributesCopyWith<$Res>? get l1_attributes {
    if (_value.l1_attributes == null) {
      return null;
    }

    return $L1_attributesCopyWith<$Res>(_value.l1_attributes!, (value) {
      return _then(_value.copyWith(l1_attributes: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ProductToolModelCopyWith<$Res>
    implements $ProductToolModelCopyWith<$Res> {
  factory _$$_ProductToolModelCopyWith(
          _$_ProductToolModel value, $Res Function(_$_ProductToolModel) then) =
      __$$_ProductToolModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
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
      List<dynamic>? reviews});

  @override
  $L1_infoCopyWith<$Res>? get l1_info;
  @override
  $L1_attributesCopyWith<$Res>? get l1_attributes;
}

/// @nodoc
class __$$_ProductToolModelCopyWithImpl<$Res>
    extends _$ProductToolModelCopyWithImpl<$Res, _$_ProductToolModel>
    implements _$$_ProductToolModelCopyWith<$Res> {
  __$$_ProductToolModelCopyWithImpl(
      _$_ProductToolModel _value, $Res Function(_$_ProductToolModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? l1_info = freezed,
    Object? quantity = freezed,
    Object? priceOriginal = freezed,
    Object? priceRegular = freezed,
    Object? l1_attributes = freezed,
    Object? categories = freezed,
    Object? image = freezed,
    Object? stocks = freezed,
    Object? status = freezed,
    Object? visibility = freezed,
    Object? author = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? dataversion = freezed,
    Object? reviews = freezed,
  }) {
    return _then(_$_ProductToolModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      l1_info: freezed == l1_info
          ? _value.l1_info
          : l1_info // ignore: cast_nullable_to_non_nullable
              as L1_info?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      priceOriginal: freezed == priceOriginal
          ? _value.priceOriginal
          : priceOriginal // ignore: cast_nullable_to_non_nullable
              as int?,
      priceRegular: freezed == priceRegular
          ? _value.priceRegular
          : priceRegular // ignore: cast_nullable_to_non_nullable
              as int?,
      l1_attributes: freezed == l1_attributes
          ? _value.l1_attributes
          : l1_attributes // ignore: cast_nullable_to_non_nullable
              as L1_attributes?,
      categories: freezed == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      stocks: freezed == stocks
          ? _value.stocks
          : stocks // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      visibility: freezed == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as String?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      dataversion: freezed == dataversion
          ? _value.dataversion
          : dataversion // ignore: cast_nullable_to_non_nullable
              as int?,
      reviews: freezed == reviews
          ? _value._reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductToolModel
    with DiagnosticableTreeMixin
    implements _ProductToolModel {
  const _$_ProductToolModel(
      {@JsonKey(name: '_id') this.id,
      this.code,
      @JsonKey(name: 'info') this.l1_info,
      this.quantity,
      this.priceOriginal,
      this.priceRegular,
      @JsonKey(name: 'attributes') this.l1_attributes,
      final List<dynamic>? categories,
      this.image,
      this.stocks,
      this.status,
      this.visibility,
      this.author,
      this.createdAt,
      this.updatedAt,
      @JsonKey(name: '__v') this.dataversion,
      final List<dynamic>? reviews})
      : _categories = categories,
        _reviews = reviews;

  factory _$_ProductToolModel.fromJson(Map<String, dynamic> json) =>
      _$$_ProductToolModelFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  final String? code;
  @override
  @JsonKey(name: 'info')
  final L1_info? l1_info;
  @override
  final int? quantity;
  @override
  final int? priceOriginal;
  @override
  final int? priceRegular;
  @override
  @JsonKey(name: 'attributes')
  final L1_attributes? l1_attributes;
  final List<dynamic>? _categories;
  @override
  List<dynamic>? get categories {
    final value = _categories;
    if (value == null) return null;
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? image;
  @override
  final String? stocks;
  @override
  final String? status;
  @override
  final String? visibility;
  @override
  final String? author;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;
  @override
  @JsonKey(name: '__v')
  final int? dataversion;
  final List<dynamic>? _reviews;
  @override
  List<dynamic>? get reviews {
    final value = _reviews;
    if (value == null) return null;
    if (_reviews is EqualUnmodifiableListView) return _reviews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProductToolModel(id: $id, code: $code, l1_info: $l1_info, quantity: $quantity, priceOriginal: $priceOriginal, priceRegular: $priceRegular, l1_attributes: $l1_attributes, categories: $categories, image: $image, stocks: $stocks, status: $status, visibility: $visibility, author: $author, createdAt: $createdAt, updatedAt: $updatedAt, dataversion: $dataversion, reviews: $reviews)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProductToolModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('code', code))
      ..add(DiagnosticsProperty('l1_info', l1_info))
      ..add(DiagnosticsProperty('quantity', quantity))
      ..add(DiagnosticsProperty('priceOriginal', priceOriginal))
      ..add(DiagnosticsProperty('priceRegular', priceRegular))
      ..add(DiagnosticsProperty('l1_attributes', l1_attributes))
      ..add(DiagnosticsProperty('categories', categories))
      ..add(DiagnosticsProperty('image', image))
      ..add(DiagnosticsProperty('stocks', stocks))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('visibility', visibility))
      ..add(DiagnosticsProperty('author', author))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('updatedAt', updatedAt))
      ..add(DiagnosticsProperty('dataversion', dataversion))
      ..add(DiagnosticsProperty('reviews', reviews));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductToolModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.l1_info, l1_info) || other.l1_info == l1_info) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.priceOriginal, priceOriginal) ||
                other.priceOriginal == priceOriginal) &&
            (identical(other.priceRegular, priceRegular) ||
                other.priceRegular == priceRegular) &&
            (identical(other.l1_attributes, l1_attributes) ||
                other.l1_attributes == l1_attributes) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.stocks, stocks) || other.stocks == stocks) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.visibility, visibility) ||
                other.visibility == visibility) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.dataversion, dataversion) ||
                other.dataversion == dataversion) &&
            const DeepCollectionEquality().equals(other._reviews, _reviews));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      code,
      l1_info,
      quantity,
      priceOriginal,
      priceRegular,
      l1_attributes,
      const DeepCollectionEquality().hash(_categories),
      image,
      stocks,
      status,
      visibility,
      author,
      createdAt,
      updatedAt,
      dataversion,
      const DeepCollectionEquality().hash(_reviews));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductToolModelCopyWith<_$_ProductToolModel> get copyWith =>
      __$$_ProductToolModelCopyWithImpl<_$_ProductToolModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductToolModelToJson(
      this,
    );
  }
}

abstract class _ProductToolModel implements ProductToolModel {
  const factory _ProductToolModel(
      {@JsonKey(name: '_id') final String? id,
      final String? code,
      @JsonKey(name: 'info') final L1_info? l1_info,
      final int? quantity,
      final int? priceOriginal,
      final int? priceRegular,
      @JsonKey(name: 'attributes') final L1_attributes? l1_attributes,
      final List<dynamic>? categories,
      final String? image,
      final String? stocks,
      final String? status,
      final String? visibility,
      final String? author,
      final String? createdAt,
      final String? updatedAt,
      @JsonKey(name: '__v') final int? dataversion,
      final List<dynamic>? reviews}) = _$_ProductToolModel;

  factory _ProductToolModel.fromJson(Map<String, dynamic> json) =
      _$_ProductToolModel.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  String? get code;
  @override
  @JsonKey(name: 'info')
  L1_info? get l1_info;
  @override
  int? get quantity;
  @override
  int? get priceOriginal;
  @override
  int? get priceRegular;
  @override
  @JsonKey(name: 'attributes')
  L1_attributes? get l1_attributes;
  @override
  List<dynamic>? get categories;
  @override
  String? get image;
  @override
  String? get stocks;
  @override
  String? get status;
  @override
  String? get visibility;
  @override
  String? get author;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  @JsonKey(name: '__v')
  int? get dataversion;
  @override
  List<dynamic>? get reviews;
  @override
  @JsonKey(ignore: true)
  _$$_ProductToolModelCopyWith<_$_ProductToolModel> get copyWith =>
      throw _privateConstructorUsedError;
}

L1_info _$L1_infoFromJson(Map<String, dynamic> json) {
  return _L1_info.fromJson(json);
}

/// @nodoc
mixin _$L1_info {
  @JsonKey(name: 'vi')
  L2_vi? get l2_vi => throw _privateConstructorUsedError;
  @JsonKey(name: 'en')
  L2_en? get l2_en => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $L1_infoCopyWith<L1_info> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $L1_infoCopyWith<$Res> {
  factory $L1_infoCopyWith(L1_info value, $Res Function(L1_info) then) =
      _$L1_infoCopyWithImpl<$Res, L1_info>;
  @useResult
  $Res call(
      {@JsonKey(name: 'vi') L2_vi? l2_vi, @JsonKey(name: 'en') L2_en? l2_en});

  $L2_viCopyWith<$Res>? get l2_vi;
  $L2_enCopyWith<$Res>? get l2_en;
}

/// @nodoc
class _$L1_infoCopyWithImpl<$Res, $Val extends L1_info>
    implements $L1_infoCopyWith<$Res> {
  _$L1_infoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? l2_vi = freezed,
    Object? l2_en = freezed,
  }) {
    return _then(_value.copyWith(
      l2_vi: freezed == l2_vi
          ? _value.l2_vi
          : l2_vi // ignore: cast_nullable_to_non_nullable
              as L2_vi?,
      l2_en: freezed == l2_en
          ? _value.l2_en
          : l2_en // ignore: cast_nullable_to_non_nullable
              as L2_en?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $L2_viCopyWith<$Res>? get l2_vi {
    if (_value.l2_vi == null) {
      return null;
    }

    return $L2_viCopyWith<$Res>(_value.l2_vi!, (value) {
      return _then(_value.copyWith(l2_vi: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $L2_enCopyWith<$Res>? get l2_en {
    if (_value.l2_en == null) {
      return null;
    }

    return $L2_enCopyWith<$Res>(_value.l2_en!, (value) {
      return _then(_value.copyWith(l2_en: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_L1_infoCopyWith<$Res> implements $L1_infoCopyWith<$Res> {
  factory _$$_L1_infoCopyWith(
          _$_L1_info value, $Res Function(_$_L1_info) then) =
      __$$_L1_infoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'vi') L2_vi? l2_vi, @JsonKey(name: 'en') L2_en? l2_en});

  @override
  $L2_viCopyWith<$Res>? get l2_vi;
  @override
  $L2_enCopyWith<$Res>? get l2_en;
}

/// @nodoc
class __$$_L1_infoCopyWithImpl<$Res>
    extends _$L1_infoCopyWithImpl<$Res, _$_L1_info>
    implements _$$_L1_infoCopyWith<$Res> {
  __$$_L1_infoCopyWithImpl(_$_L1_info _value, $Res Function(_$_L1_info) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? l2_vi = freezed,
    Object? l2_en = freezed,
  }) {
    return _then(_$_L1_info(
      l2_vi: freezed == l2_vi
          ? _value.l2_vi
          : l2_vi // ignore: cast_nullable_to_non_nullable
              as L2_vi?,
      l2_en: freezed == l2_en
          ? _value.l2_en
          : l2_en // ignore: cast_nullable_to_non_nullable
              as L2_en?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_L1_info with DiagnosticableTreeMixin implements _L1_info {
  const _$_L1_info(
      {@JsonKey(name: 'vi') this.l2_vi, @JsonKey(name: 'en') this.l2_en});

  factory _$_L1_info.fromJson(Map<String, dynamic> json) =>
      _$$_L1_infoFromJson(json);

  @override
  @JsonKey(name: 'vi')
  final L2_vi? l2_vi;
  @override
  @JsonKey(name: 'en')
  final L2_en? l2_en;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'L1_info(l2_vi: $l2_vi, l2_en: $l2_en)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'L1_info'))
      ..add(DiagnosticsProperty('l2_vi', l2_vi))
      ..add(DiagnosticsProperty('l2_en', l2_en));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_L1_info &&
            (identical(other.l2_vi, l2_vi) || other.l2_vi == l2_vi) &&
            (identical(other.l2_en, l2_en) || other.l2_en == l2_en));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, l2_vi, l2_en);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_L1_infoCopyWith<_$_L1_info> get copyWith =>
      __$$_L1_infoCopyWithImpl<_$_L1_info>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_L1_infoToJson(
      this,
    );
  }
}

abstract class _L1_info implements L1_info {
  const factory _L1_info(
      {@JsonKey(name: 'vi') final L2_vi? l2_vi,
      @JsonKey(name: 'en') final L2_en? l2_en}) = _$_L1_info;

  factory _L1_info.fromJson(Map<String, dynamic> json) = _$_L1_info.fromJson;

  @override
  @JsonKey(name: 'vi')
  L2_vi? get l2_vi;
  @override
  @JsonKey(name: 'en')
  L2_en? get l2_en;
  @override
  @JsonKey(ignore: true)
  _$$_L1_infoCopyWith<_$_L1_info> get copyWith =>
      throw _privateConstructorUsedError;
}

L1_attributes _$L1_attributesFromJson(Map<String, dynamic> json) {
  return _L1_attributes.fromJson(json);
}

/// @nodoc
mixin _$L1_attributes {
  List<dynamic>? get size => throw _privateConstructorUsedError;
  List<dynamic>? get color => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $L1_attributesCopyWith<L1_attributes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $L1_attributesCopyWith<$Res> {
  factory $L1_attributesCopyWith(
          L1_attributes value, $Res Function(L1_attributes) then) =
      _$L1_attributesCopyWithImpl<$Res, L1_attributes>;
  @useResult
  $Res call({List<dynamic>? size, List<dynamic>? color});
}

/// @nodoc
class _$L1_attributesCopyWithImpl<$Res, $Val extends L1_attributes>
    implements $L1_attributesCopyWith<$Res> {
  _$L1_attributesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? size = freezed,
    Object? color = freezed,
  }) {
    return _then(_value.copyWith(
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_L1_attributesCopyWith<$Res>
    implements $L1_attributesCopyWith<$Res> {
  factory _$$_L1_attributesCopyWith(
          _$_L1_attributes value, $Res Function(_$_L1_attributes) then) =
      __$$_L1_attributesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<dynamic>? size, List<dynamic>? color});
}

/// @nodoc
class __$$_L1_attributesCopyWithImpl<$Res>
    extends _$L1_attributesCopyWithImpl<$Res, _$_L1_attributes>
    implements _$$_L1_attributesCopyWith<$Res> {
  __$$_L1_attributesCopyWithImpl(
      _$_L1_attributes _value, $Res Function(_$_L1_attributes) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? size = freezed,
    Object? color = freezed,
  }) {
    return _then(_$_L1_attributes(
      size: freezed == size
          ? _value._size
          : size // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      color: freezed == color
          ? _value._color
          : color // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_L1_attributes with DiagnosticableTreeMixin implements _L1_attributes {
  const _$_L1_attributes(
      {final List<dynamic>? size, final List<dynamic>? color})
      : _size = size,
        _color = color;

  factory _$_L1_attributes.fromJson(Map<String, dynamic> json) =>
      _$$_L1_attributesFromJson(json);

  final List<dynamic>? _size;
  @override
  List<dynamic>? get size {
    final value = _size;
    if (value == null) return null;
    if (_size is EqualUnmodifiableListView) return _size;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _color;
  @override
  List<dynamic>? get color {
    final value = _color;
    if (value == null) return null;
    if (_color is EqualUnmodifiableListView) return _color;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'L1_attributes(size: $size, color: $color)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'L1_attributes'))
      ..add(DiagnosticsProperty('size', size))
      ..add(DiagnosticsProperty('color', color));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_L1_attributes &&
            const DeepCollectionEquality().equals(other._size, _size) &&
            const DeepCollectionEquality().equals(other._color, _color));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_size),
      const DeepCollectionEquality().hash(_color));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_L1_attributesCopyWith<_$_L1_attributes> get copyWith =>
      __$$_L1_attributesCopyWithImpl<_$_L1_attributes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_L1_attributesToJson(
      this,
    );
  }
}

abstract class _L1_attributes implements L1_attributes {
  const factory _L1_attributes(
      {final List<dynamic>? size,
      final List<dynamic>? color}) = _$_L1_attributes;

  factory _L1_attributes.fromJson(Map<String, dynamic> json) =
      _$_L1_attributes.fromJson;

  @override
  List<dynamic>? get size;
  @override
  List<dynamic>? get color;
  @override
  @JsonKey(ignore: true)
  _$$_L1_attributesCopyWith<_$_L1_attributes> get copyWith =>
      throw _privateConstructorUsedError;
}

L2_vi _$L2_viFromJson(Map<String, dynamic> json) {
  return _L2_vi.fromJson(json);
}

/// @nodoc
mixin _$L2_vi {
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  String? get slug => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $L2_viCopyWith<L2_vi> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $L2_viCopyWith<$Res> {
  factory $L2_viCopyWith(L2_vi value, $Res Function(L2_vi) then) =
      _$L2_viCopyWithImpl<$Res, L2_vi>;
  @useResult
  $Res call({String? name, String? description, String? content, String? slug});
}

/// @nodoc
class _$L2_viCopyWithImpl<$Res, $Val extends L2_vi>
    implements $L2_viCopyWith<$Res> {
  _$L2_viCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? content = freezed,
    Object? slug = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_L2_viCopyWith<$Res> implements $L2_viCopyWith<$Res> {
  factory _$$_L2_viCopyWith(_$_L2_vi value, $Res Function(_$_L2_vi) then) =
      __$$_L2_viCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? description, String? content, String? slug});
}

/// @nodoc
class __$$_L2_viCopyWithImpl<$Res> extends _$L2_viCopyWithImpl<$Res, _$_L2_vi>
    implements _$$_L2_viCopyWith<$Res> {
  __$$_L2_viCopyWithImpl(_$_L2_vi _value, $Res Function(_$_L2_vi) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? content = freezed,
    Object? slug = freezed,
  }) {
    return _then(_$_L2_vi(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_L2_vi with DiagnosticableTreeMixin implements _L2_vi {
  const _$_L2_vi({this.name, this.description, this.content, this.slug});

  factory _$_L2_vi.fromJson(Map<String, dynamic> json) =>
      _$$_L2_viFromJson(json);

  @override
  final String? name;
  @override
  final String? description;
  @override
  final String? content;
  @override
  final String? slug;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'L2_vi(name: $name, description: $description, content: $content, slug: $slug)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'L2_vi'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('content', content))
      ..add(DiagnosticsProperty('slug', slug));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_L2_vi &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.slug, slug) || other.slug == slug));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, description, content, slug);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_L2_viCopyWith<_$_L2_vi> get copyWith =>
      __$$_L2_viCopyWithImpl<_$_L2_vi>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_L2_viToJson(
      this,
    );
  }
}

abstract class _L2_vi implements L2_vi {
  const factory _L2_vi(
      {final String? name,
      final String? description,
      final String? content,
      final String? slug}) = _$_L2_vi;

  factory _L2_vi.fromJson(Map<String, dynamic> json) = _$_L2_vi.fromJson;

  @override
  String? get name;
  @override
  String? get description;
  @override
  String? get content;
  @override
  String? get slug;
  @override
  @JsonKey(ignore: true)
  _$$_L2_viCopyWith<_$_L2_vi> get copyWith =>
      throw _privateConstructorUsedError;
}

L2_en _$L2_enFromJson(Map<String, dynamic> json) {
  return _L2_en.fromJson(json);
}

/// @nodoc
mixin _$L2_en {
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  String? get slug => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $L2_enCopyWith<L2_en> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $L2_enCopyWith<$Res> {
  factory $L2_enCopyWith(L2_en value, $Res Function(L2_en) then) =
      _$L2_enCopyWithImpl<$Res, L2_en>;
  @useResult
  $Res call({String? name, String? description, String? content, String? slug});
}

/// @nodoc
class _$L2_enCopyWithImpl<$Res, $Val extends L2_en>
    implements $L2_enCopyWith<$Res> {
  _$L2_enCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? content = freezed,
    Object? slug = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_L2_enCopyWith<$Res> implements $L2_enCopyWith<$Res> {
  factory _$$_L2_enCopyWith(_$_L2_en value, $Res Function(_$_L2_en) then) =
      __$$_L2_enCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? description, String? content, String? slug});
}

/// @nodoc
class __$$_L2_enCopyWithImpl<$Res> extends _$L2_enCopyWithImpl<$Res, _$_L2_en>
    implements _$$_L2_enCopyWith<$Res> {
  __$$_L2_enCopyWithImpl(_$_L2_en _value, $Res Function(_$_L2_en) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? content = freezed,
    Object? slug = freezed,
  }) {
    return _then(_$_L2_en(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_L2_en with DiagnosticableTreeMixin implements _L2_en {
  const _$_L2_en({this.name, this.description, this.content, this.slug});

  factory _$_L2_en.fromJson(Map<String, dynamic> json) =>
      _$$_L2_enFromJson(json);

  @override
  final String? name;
  @override
  final String? description;
  @override
  final String? content;
  @override
  final String? slug;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'L2_en(name: $name, description: $description, content: $content, slug: $slug)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'L2_en'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('content', content))
      ..add(DiagnosticsProperty('slug', slug));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_L2_en &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.slug, slug) || other.slug == slug));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, description, content, slug);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_L2_enCopyWith<_$_L2_en> get copyWith =>
      __$$_L2_enCopyWithImpl<_$_L2_en>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_L2_enToJson(
      this,
    );
  }
}

abstract class _L2_en implements L2_en {
  const factory _L2_en(
      {final String? name,
      final String? description,
      final String? content,
      final String? slug}) = _$_L2_en;

  factory _L2_en.fromJson(Map<String, dynamic> json) = _$_L2_en.fromJson;

  @override
  String? get name;
  @override
  String? get description;
  @override
  String? get content;
  @override
  String? get slug;
  @override
  @JsonKey(ignore: true)
  _$$_L2_enCopyWith<_$_L2_en> get copyWith =>
      throw _privateConstructorUsedError;
}
