// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'color_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ColorModel _$ColorModelFromJson(Map<String, dynamic> json) {
  return _ColorModel.fromJson(json);
}

/// @nodoc
mixin _$ColorModel {
  String get id => throw _privateConstructorUsedError;
  String? get color => throw _privateConstructorUsedError;
  String? get namevi => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ColorModelCopyWith<ColorModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ColorModelCopyWith<$Res> {
  factory $ColorModelCopyWith(
          ColorModel value, $Res Function(ColorModel) then) =
      _$ColorModelCopyWithImpl<$Res, ColorModel>;
  @useResult
  $Res call({String id, String? color, String? namevi});
}

/// @nodoc
class _$ColorModelCopyWithImpl<$Res, $Val extends ColorModel>
    implements $ColorModelCopyWith<$Res> {
  _$ColorModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? color = freezed,
    Object? namevi = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      namevi: freezed == namevi
          ? _value.namevi
          : namevi // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ColorModelCopyWith<$Res>
    implements $ColorModelCopyWith<$Res> {
  factory _$$_ColorModelCopyWith(
          _$_ColorModel value, $Res Function(_$_ColorModel) then) =
      __$$_ColorModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String? color, String? namevi});
}

/// @nodoc
class __$$_ColorModelCopyWithImpl<$Res>
    extends _$ColorModelCopyWithImpl<$Res, _$_ColorModel>
    implements _$$_ColorModelCopyWith<$Res> {
  __$$_ColorModelCopyWithImpl(
      _$_ColorModel _value, $Res Function(_$_ColorModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? color = freezed,
    Object? namevi = freezed,
  }) {
    return _then(_$_ColorModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      namevi: freezed == namevi
          ? _value.namevi
          : namevi // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ColorModel with DiagnosticableTreeMixin implements _ColorModel {
  const _$_ColorModel({required this.id, this.color, this.namevi});

  factory _$_ColorModel.fromJson(Map<String, dynamic> json) =>
      _$$_ColorModelFromJson(json);

  @override
  final String id;
  @override
  final String? color;
  @override
  final String? namevi;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ColorModel(id: $id, color: $color, namevi: $namevi)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ColorModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('color', color))
      ..add(DiagnosticsProperty('namevi', namevi));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ColorModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.namevi, namevi) || other.namevi == namevi));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, color, namevi);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ColorModelCopyWith<_$_ColorModel> get copyWith =>
      __$$_ColorModelCopyWithImpl<_$_ColorModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ColorModelToJson(
      this,
    );
  }
}

abstract class _ColorModel implements ColorModel {
  const factory _ColorModel(
      {required final String id,
      final String? color,
      final String? namevi}) = _$_ColorModel;

  factory _ColorModel.fromJson(Map<String, dynamic> json) =
      _$_ColorModel.fromJson;

  @override
  String get id;
  @override
  String? get color;
  @override
  String? get namevi;
  @override
  @JsonKey(ignore: true)
  _$$_ColorModelCopyWith<_$_ColorModel> get copyWith =>
      throw _privateConstructorUsedError;
}
