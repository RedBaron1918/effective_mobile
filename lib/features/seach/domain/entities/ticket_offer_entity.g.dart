// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_offer_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TicketOfferEntityImpl _$$TicketOfferEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$TicketOfferEntityImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      timeRange: (json['time_range'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      price: json['price'] == null
          ? null
          : PriceEntity.fromJson(json['price'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TicketOfferEntityImplToJson(
        _$TicketOfferEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'time_range': instance.timeRange,
      'price': instance.price,
    };
