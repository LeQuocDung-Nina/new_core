// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_temp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CartTemp _$$_CartTempFromJson(Map<String, dynamic> json) => _$_CartTemp(
      id: json['id'] as String,
      namevi: json['namevi'] as String?,
      regular_price: json['regular_price'] as String?,
      sale_price: json['sale_price'] as String?,
      discount: json['discount'] as String?,
      id_list: json['id_list'] as String?,
      photo: json['photo'] as String?,
      quantity: json['quantity'] as int? ?? 1,
      colorTemp: json['colorTemp'] as String? ?? "",
      sizeTemp: json['sizeTemp'] as String? ?? "",
    );

Map<String, dynamic> _$$_CartTempToJson(_$_CartTemp instance) =>
    <String, dynamic>{
      'id': instance.id,
      'namevi': instance.namevi,
      'regular_price': instance.regular_price,
      'sale_price': instance.sale_price,
      'discount': instance.discount,
      'id_list': instance.id_list,
      'photo': instance.photo,
      'quantity': instance.quantity,
      'colorTemp': instance.colorTemp,
      'sizeTemp': instance.sizeTemp,
    };
