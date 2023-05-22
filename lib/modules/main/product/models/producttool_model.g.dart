// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'producttool_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductToolModel _$$_ProductToolModelFromJson(Map<String, dynamic> json) =>
    _$_ProductToolModel(
      id: json['_id'] as String?,
      code: json['code'] as String?,
      l1_info: json['info'] == null
          ? null
          : L1_info.fromJson(json['info'] as Map<String, dynamic>),
      quantity: json['quantity'] as int?,
      priceOriginal: json['priceOriginal'] as int?,
      priceRegular: json['priceRegular'] as int?,
      l1_attributes: json['attributes'] == null
          ? null
          : L1_attributes.fromJson(json['attributes'] as Map<String, dynamic>),
      categories: json['categories'] as List<dynamic>?,
      image: json['image'] as String?,
      stocks: json['stocks'] as String?,
      status: json['status'] as String?,
      visibility: json['visibility'] as String?,
      author: json['author'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      dataversion: json['__v'] as int?,
      reviews: json['reviews'] as List<dynamic>?,
    );

Map<String, dynamic> _$$_ProductToolModelToJson(_$_ProductToolModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'code': instance.code,
      'info': instance.l1_info,
      'quantity': instance.quantity,
      'priceOriginal': instance.priceOriginal,
      'priceRegular': instance.priceRegular,
      'attributes': instance.l1_attributes,
      'categories': instance.categories,
      'image': instance.image,
      'stocks': instance.stocks,
      'status': instance.status,
      'visibility': instance.visibility,
      'author': instance.author,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      '__v': instance.dataversion,
      'reviews': instance.reviews,
    };

_$_L1_info _$$_L1_infoFromJson(Map<String, dynamic> json) => _$_L1_info(
      l2_vi: json['vi'] == null
          ? null
          : L2_vi.fromJson(json['vi'] as Map<String, dynamic>),
      l2_en: json['en'] == null
          ? null
          : L2_en.fromJson(json['en'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_L1_infoToJson(_$_L1_info instance) =>
    <String, dynamic>{
      'vi': instance.l2_vi,
      'en': instance.l2_en,
    };

_$_L1_attributes _$$_L1_attributesFromJson(Map<String, dynamic> json) =>
    _$_L1_attributes(
      size: json['size'] as List<dynamic>?,
      color: json['color'] as List<dynamic>?,
    );

Map<String, dynamic> _$$_L1_attributesToJson(_$_L1_attributes instance) =>
    <String, dynamic>{
      'size': instance.size,
      'color': instance.color,
    };

_$_L2_vi _$$_L2_viFromJson(Map<String, dynamic> json) => _$_L2_vi(
      name: json['name'] as String?,
      description: json['description'] as String?,
      content: json['content'] as String?,
      slug: json['slug'] as String?,
    );

Map<String, dynamic> _$$_L2_viToJson(_$_L2_vi instance) => <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'content': instance.content,
      'slug': instance.slug,
    };

_$_L2_en _$$_L2_enFromJson(Map<String, dynamic> json) => _$_L2_en(
      name: json['name'] as String?,
      description: json['description'] as String?,
      content: json['content'] as String?,
      slug: json['slug'] as String?,
    );

Map<String, dynamic> _$$_L2_enToJson(_$_L2_en instance) => <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'content': instance.content,
      'slug': instance.slug,
    };
