// import 'package:bloc/bloc.dart';
// import 'package:equatable/equatable.dart';

// part 'search_page_state.dart';

// class SearchPageCubit extends Cubit<SearchPageState> {
//   SearchPageCubit() : super(SearchPageInitial());
// }

import 'package:effective_mobile/core/enums/enums.dart';
import 'package:effective_mobile/features/seach/domain/entities/ticket_entity.dart';
import 'package:effective_mobile/features/seach/domain/entities/ticket_offer_entity.dart';
import 'package:effective_mobile/features/seach/domain/usecases/ticket_offer_use_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_state.dart';
part 'search_cubit.freezed.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit({
    required GetTicketOffersUseCase getOffersUseCase,
    required GetTicketsUseCase getTicketsUseCase,
  })  : _getOffersUseCase = getOffersUseCase,
        _getTicketsUseCase = getTicketsUseCase,
        super(const SearchState());
  final GetTicketOffersUseCase _getOffersUseCase;
  final GetTicketsUseCase _getTicketsUseCase;

  Future<void> init() async {
    emit(state.copyWith(status: Status.loading));
    final List<TicketOfferEntity> offerList = await _getOffersUseCase();
    if (offerList.isEmpty) {
      emit(state.copyWith(status: Status.failure));
      return;
    }
    emit(state.copyWith(status: Status.success, offersList: offerList));
  }

  Future<void> getTickets() async {
    emit(state.copyWith(status: Status.loading));
    final List<TicketEntity> tickets = await _getTicketsUseCase();
    if (tickets.isEmpty) {
      emit(state.copyWith(status: Status.failure));
      return;
    }
    emit(state.copyWith(status: Status.success, tickets: tickets));
  }
}
