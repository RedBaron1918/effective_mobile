part of 'airlines_cubit.dart';

@freezed
class AirlinesState with _$AirlinesState {
  const AirlinesState._();

  const factory AirlinesState({
    @Default(Status.initial) Status status,
    @Default(<OffersEntity>[]) List<OffersEntity> offersList,
    @Default('') String startPoint,
    @Default('') String endPoint,
  }) = _AirlinesState;
}
