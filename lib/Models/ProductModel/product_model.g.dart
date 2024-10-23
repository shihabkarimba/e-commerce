// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductModelImpl _$$ProductModelImplFromJson(Map<String, dynamic> json) =>
    _$ProductModelImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      image: json['image'] as String?,
      gallery:
          (json['gallery'] as List<dynamic>?)?.map((e) => e as String).toList(),
      description: json['description'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      availableSizes: (json['availableSizes'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
      symbol: json['symbol'] as String?,
    );

Map<String, dynamic> _$$ProductModelImplToJson(_$ProductModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'gallery': instance.gallery,
      'description': instance.description,
      'price': instance.price,
      'availableSizes': instance.availableSizes,
      'symbol': instance.symbol,
    };
