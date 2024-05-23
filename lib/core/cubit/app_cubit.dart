import 'package:effective_mobile/core/enums/enums.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// ignore: unused_import
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_state.dart';
part 'app_cubit.freezed.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(const AppState());

  void changeTab(BottomBarTab tab) {
    emit(
      state.copyWith(
        currentTab: tab,
      ),
    );
  }
}
