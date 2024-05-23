// ignore_for_file: invalid_annotation_target

import 'package:effective_mobile/features/airlines/domain/entities/offers_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ticket_offer_entity.freezed.dart';
part 'ticket_offer_entity.g.dart';

@freezed
class TicketOfferEntity with _$TicketOfferEntity {
  const factory TicketOfferEntity({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "title") required String title,
    @JsonKey(name: "time_range") required List<String>? timeRange,
    required PriceEntity? price,
  }) = _TicketOfferEntity;
  factory TicketOfferEntity.fromJson(Map<String, dynamic> json) =>
      _$TicketOfferEntityFromJson(json);
  static const empty = TicketOfferEntity(
    id: 0,
    title: '',
    price: PriceEntity.empty,
    timeRange: [],
  );
}
