// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Product _$ProductFromJson(Map<String, dynamic> json) => Product(
      json['price'] as String?,
      json['id'] as int?,
      json['name'] as String?,
      json['brand'] as String?,
      json['image_link'] as String,
      json['description'] as String,
      json['product_type'] as String,
    );

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
      'price': instance.price,
      'id': instance.id,
      'name': instance.name,
      'brand': instance.brand,
      'image_link': instance.image_link,
      'description': instance.description,
      'product_type': instance.description,
    };
