// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'offers_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OffersEntityImpl _$$OffersEntityImplFromJson(Map<String, dynamic> json) =>
    _$OffersEntityImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      town: json['town'] as String,
      price: PriceEntity.fromJson(json['price'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$OffersEntityImplToJson(_$OffersEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'town': instance.town,
      'price': instance.price,
    };

_$PriceEntityImpl _$$PriceEntityImplFromJson(Map<String, dynamic> json) =>
    _$PriceEntityImpl(
      value: (json['value'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$PriceEntityImplToJson(_$PriceEntityImpl instance) =>
    <String, dynamic>{
      'value': instance.value,
    };
