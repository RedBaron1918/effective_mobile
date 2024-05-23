part of 'search_cubit.dart';

@freezed
class SearchState with _$SearchState {
  const SearchState._();

  const factory SearchState({
    @Default(Status.initial) Status status,
    @Default(<TicketOfferEntity>[]) List<TicketOfferEntity> offersList,
    @Default(<TicketEntity>[]) List<TicketEntity> tickets,
  }) = _SearchState;
}
