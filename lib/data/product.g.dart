// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Product _$$_ProductFromJson(Map<String, dynamic> json) => _$_Product(
      productName: json['productName'] as String,
      productImageUrl: json['productImageUrl'] as String,
      currentPrice: json['currentPrice'] as String,
      oldPrice: json['oldPrice'] as String,
      isLiked: json['isLiked'] as bool,
    );

Map<String, dynamic> _$$_ProductToJson(_$_Product instance) =>
    <String, dynamic>{
      'productName': instance.productName,
      'productImageUrl': instance.productImageUrl,
      'currentPrice': instance.currentPrice,
      'oldPrice': instance.oldPrice,
      'isLiked': instance.isLiked,
    };
