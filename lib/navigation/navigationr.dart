import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/navigation/navigation_cubit.dart';
import 'package:weather_app/weather/pages/home_page.dart';
import 'package:weather_app/setting/pages/setting_page.dart';

class Navigation extends StatelessWidget {
  const Navigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationCubit, NavigationState>(
        builder: (context, state) {
      return Navigator(
        pages: [
          if (state == NavigationState.homePage)
            MaterialPage(child: HomePage()),
          if (state == NavigationState.settingPage)
            MaterialPage(child: SettingPage()),
        ],
        onPopPage: (route, result) => route.didPop(result),
      );
    });
  }
}
