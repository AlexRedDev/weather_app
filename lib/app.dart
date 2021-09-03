import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/navigation/navigation_cubit.dart';
import 'package:weather_app/navigation/navigationr.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => NavigationCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: true,
        theme: ThemeData.dark(),
        home: Navigation(),
      ),
    );
  }
}
