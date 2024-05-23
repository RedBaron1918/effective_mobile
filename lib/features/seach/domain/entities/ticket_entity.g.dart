// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TicketImpl _$$TicketImplFromJson(Map<String, dynamic> json) => _$TicketImpl(
      id: (json['id'] as num).toInt(),
      badge: json['badge'] as String?,
      price: json['price'] == null
          ? null
          : PriceEntity.fromJson(json['price'] as Map<String, dynamic>),
      providerName: json['provider_name'] as String,
      company: json['company'] as String,
      departure: Arrival.fromJson(json['departure'] as Map<String, dynamic>),
      arrival: Arrival.fromJson(json['arrival'] as Map<String, dynamic>),
      hasTransfer: json['has_transfer'] as bool,
      hasVisaTransfer: json['has_visa_transfer'] as bool,
      luggage: json['luggage'] == null
          ? null
          : Luggage.fromJson(json['luggage'] as Map<String, dynamic>),
      handLuggage: json['hand_luggage'] == null
          ? null
          : HandLuggage.fromJson(json['hand_luggage'] as Map<String, dynamic>),
      isReturnable: json['is_returnable'] as bool,
      isExchangable: json['is_exchangable'] as bool,
    );

Map<String, dynamic> _$$TicketImplToJson(_$TicketImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'badge': instance.badge,
      'price': instance.price,
      'provider_name': instance.providerName,
      'company': instance.company,
      'departure': instance.departure,
      'arrival': instance.arrival,
      'has_transfer': instance.hasTransfer,
      'has_visa_transfer': instance.hasVisaTransfer,
      'luggage': instance.luggage,
      'hand_luggage': instance.handLuggage,
      'is_returnable': instance.isReturnable,
      'is_exchangable': instance.isExchangable,
    };

_$ArrivalImpl _$$ArrivalImplFromJson(Map<String, dynamic> json) =>
    _$ArrivalImpl(
      town: json['town'] as String,
      date: DateTime.parse(json['date'] as String),
      airport: json['airport'] as String,
    );

Map<String, dynamic> _$$ArrivalImplToJson(_$ArrivalImpl instance) =>
    <String, dynamic>{
      'town': instance.town,
      'date': instance.date.toIso8601String(),
      'airport': instance.airport,
    };

_$HandLuggageImpl _$$HandLuggageImplFromJson(Map<String, dynamic> json) =>
    _$HandLuggageImpl(
      hasHandLuggage: json['has_hand_luggage'] as bool?,
      size: json['size'] as String?,
    );

Map<String, dynamic> _$$HandLuggageImplToJson(_$HandLuggageImpl instance) =>
    <String, dynamic>{
      'has_hand_luggage': instance.hasHandLuggage,
      'size': instance.size,
    };

_$LuggageImpl _$$LuggageImplFromJson(Map<String, dynamic> json) =>
    _$LuggageImpl(
      hasLuggage: json['has_luggage'] as bool,
      price: json['price'] == null
          ? null
          : PriceEntity.fromJson(json['price'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LuggageImplToJson(_$LuggageImpl instance) =>
    <String, dynamic>{
      'has_luggage': instance.hasLuggage,
      'price': instance.price,
    };
