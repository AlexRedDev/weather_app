import 'package:flutter_bloc/flutter_bloc.dart';

enum NavigationState {
  homePage,
  settingPage,
}

class NavigationCubit extends Cubit<NavigationState> {
  //Todo: add parametr for setting witht searching city weather
  NavigationCubit() : super(NavigationState.homePage);

  void showHomePage() => emit(NavigationState.homePage);
  void showSettingPage() => emit(NavigationState.settingPage);
}
