import 'package:effective_mobile/core/enums/enums.dart';
import 'package:effective_mobile/core/local_storage/use_cases.dart';
import 'package:effective_mobile/features/airlines/domain/entities/offers_entity.dart';
import 'package:effective_mobile/features/airlines/domain/usecases/offers_use_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'airlines_state.dart';
part 'airlines_cubit.freezed.dart';

class AirlinesCubit extends Cubit<AirlinesState> {
  AirlinesCubit({
    required GetOffersUseCase getOffersUseCase,
    required GetTextField getTextField,
    required SetTextField setTextField,
    required DelteTextField delteTextField,
  })  : _getOffersUseCase = getOffersUseCase,
        _getTextField = getTextField,
        _setTextField = setTextField,
        _delteTextField = delteTextField,
        super(const AirlinesState());
  final GetOffersUseCase _getOffersUseCase;
  final GetTextField _getTextField;
  final SetTextField _setTextField;
  final DelteTextField _delteTextField;

  Future<void> init() async {
    emit(state.copyWith(status: Status.loading));
    final String text = await _getTextField();

    emit(state.copyWith(startPoint: text));

    final List<OffersEntity> offerList = await _getOffersUseCase();
    if (offerList.isEmpty) {
      emit(state.copyWith(status: Status.failure));
      return;
    }
    emit(state.copyWith(status: Status.success, offersList: offerList));
  }

  void onStartPointChanged(String text) async {
    emit(state.copyWith(startPoint: text));
    _setTextField(state.startPoint);
  }

  void onEndpointChanged(String text) {
    emit(state.copyWith(endPoint: text));
  }

  void onSwitch() {
    final String startPoint = state.startPoint;
    emit(state.copyWith(startPoint: state.endPoint, endPoint: startPoint));
    _delteTextField();
    _setTextField(state.endPoint);
  }

  void onClear() {
    emit(state.copyWith(endPoint: ''));
  }
}
