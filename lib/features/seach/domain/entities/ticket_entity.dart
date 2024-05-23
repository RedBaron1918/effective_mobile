// ignore_for_file: invalid_annotation_target

import 'package:effective_mobile/features/airlines/domain/entities/offers_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ticket_entity.freezed.dart';
part 'ticket_entity.g.dart';

@freezed
class TicketEntity with _$TicketEntity {
  const factory TicketEntity({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "badge") required String? badge,
    @JsonKey(name: "price") required PriceEntity? price,
    @JsonKey(name: "provider_name") required String providerName,
    @JsonKey(name: "company") required String company,
    @JsonKey(name: "departure") required Arrival departure,
    @JsonKey(name: "arrival") required Arrival arrival,
    @JsonKey(name: "has_transfer") required bool hasTransfer,
    @JsonKey(name: "has_visa_transfer") required bool hasVisaTransfer,
    @JsonKey(name: "luggage") required Luggage? luggage,
    @JsonKey(name: "hand_luggage") required HandLuggage? handLuggage,
    @JsonKey(name: "is_returnable") required bool isReturnable,
    @JsonKey(name: "is_exchangable") required bool isExchangable,
  }) = _Ticket;
  factory TicketEntity.fromJson(Map<String, dynamic> json) =>
      _$TicketEntityFromJson(json);
}

@freezed
class Arrival with _$Arrival {
  const factory Arrival({
    @JsonKey(name: "town") required String town,
    @JsonKey(name: "date") required DateTime date,
    @JsonKey(name: "airport") required String airport,
  }) = _Arrival;
  factory Arrival.fromJson(Map<String, dynamic> json) =>
      _$ArrivalFromJson(json);
}

@freezed
class HandLuggage with _$HandLuggage {
  const factory HandLuggage({
    @JsonKey(name: "has_hand_luggage") required bool? hasHandLuggage,
    @JsonKey(name: "size") required String? size,
  }) = _HandLuggage;
  factory HandLuggage.fromJson(Map<String, dynamic> json) =>
      _$HandLuggageFromJson(json);
}

@freezed
class Luggage with _$Luggage {
  const factory Luggage({
    @JsonKey(name: "has_luggage") required bool hasLuggage,
    @JsonKey(name: "price") required PriceEntity? price,
  }) = _Luggage;
  factory Luggage.fromJson(Map<String, dynamic> json) =>
      _$LuggageFromJson(json);
}
