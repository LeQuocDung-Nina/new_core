// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'size_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SizeModel _$SizeModelFromJson(Map<String, dynamic> json) {
  return _SizeModel.fromJson(json);
}

/// @nodoc
mixin _$SizeModel {
  String get id => throw _privateConstructorUsedError;
  String? get namevi => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SizeModelCopyWith<SizeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SizeModelCopyWith<$Res> {
  factory $SizeModelCopyWith(SizeModel value, $Res Function(SizeModel) then) =
      _$SizeModelCopyWithImpl<$Res, SizeModel>;
  @useResult
  $Res call({String id, String? namevi});
}

/// @nodoc
class _$SizeModelCopyWithImpl<$Res, $Val extends SizeModel>
    implements $SizeModelCopyWith<$Res> {
  _$SizeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? namevi = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      namevi: freezed == namevi
          ? _value.namevi
          : namevi // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SizeModelCopyWith<$Res> implements $SizeModelCopyWith<$Res> {
  factory _$$_SizeModelCopyWith(
          _$_SizeModel value, $Res Function(_$_SizeModel) then) =
      __$$_SizeModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String? namevi});
}

/// @nodoc
class __$$_SizeModelCopyWithImpl<$Res>
    extends _$SizeModelCopyWithImpl<$Res, _$_SizeModel>
    implements _$$_SizeModelCopyWith<$Res> {
  __$$_SizeModelCopyWithImpl(
      _$_SizeModel _value, $Res Function(_$_SizeModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? namevi = freezed,
  }) {
    return _then(_$_SizeModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      namevi: freezed == namevi
          ? _value.namevi
          : namevi // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SizeModel with DiagnosticableTreeMixin implements _SizeModel {
  const _$_SizeModel({required this.id, this.namevi});

  factory _$_SizeModel.fromJson(Map<String, dynamic> json) =>
      _$$_SizeModelFromJson(json);

  @override
  final String id;
  @override
  final String? namevi;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SizeModel(id: $id, namevi: $namevi)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SizeModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('namevi', namevi));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SizeModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.namevi, namevi) || other.namevi == namevi));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, namevi);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SizeModelCopyWith<_$_SizeModel> get copyWith =>
      __$$_SizeModelCopyWithImpl<_$_SizeModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SizeModelToJson(
      this,
    );
  }
}

abstract class _SizeModel implements SizeModel {
  const factory _SizeModel({required final String id, final String? namevi}) =
      _$_SizeModel;

  factory _SizeModel.fromJson(Map<String, dynamic> json) =
      _$_SizeModel.fromJson;

  @override
  String get id;
  @override
  String? get namevi;
  @override
  @JsonKey(ignore: true)
  _$$_SizeModelCopyWith<_$_SizeModel> get copyWith =>
      throw _privateConstructorUsedError;
}
