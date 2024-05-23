import 'package:freezed_annotation/freezed_annotation.dart';

part 'offers_entity.freezed.dart';
part 'offers_entity.g.dart';

@freezed
class OffersEntity with _$OffersEntity {
  const factory OffersEntity({
    required int id,
    required String title,
    required String town,
    required PriceEntity price,
  }) = _OffersEntity;

  factory OffersEntity.fromJson(Map<String, dynamic> json) =>
      _$OffersEntityFromJson(json);

  static const empty =
      OffersEntity(id: 0, title: '', town: '', price: PriceEntity.empty);
}

@freezed
class PriceEntity with _$PriceEntity {
  const factory PriceEntity({
    required int? value,
  }) = _PriceEntity;

  factory PriceEntity.fromJson(Map<String, dynamic> json) =>
      _$PriceEntityFromJson(json);

  static const empty = PriceEntity(value: 0);
}
