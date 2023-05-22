// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CartModel _$$_CartModelFromJson(Map<String, dynamic> json) => _$_CartModel(
      id: json['id'] as String,
      colorTemp: json['colorTemp'] as String?,
      sizeTemp: json['sizeTemp'] as String?,
      quantity: json['quantity'] as int? ?? 1,
    );

Map<String, dynamic> _$$_CartModelToJson(_$_CartModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'colorTemp': instance.colorTemp,
      'sizeTemp': instance.sizeTemp,
      'quantity': instance.quantity,
    };
