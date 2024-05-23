part of 'app_cubit.dart';

@freezed
class AppState with _$AppState {
  const AppState._();
  const factory AppState({
    @Default(BottomBarTab.airlines) BottomBarTab currentTab,
  }) = _AppState;
}
