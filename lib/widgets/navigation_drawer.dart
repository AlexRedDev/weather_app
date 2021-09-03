import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/navigation/navigation_cubit.dart';

class DrawerNavigation extends StatelessWidget {
  const DrawerNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationCubit, NavigationState>(
      builder: (context, state) {
        return Drawer(
          child: ListView(
            children: [
              ListTile(
                title: Text('Home'),
                onTap: () => context.read<NavigationCubit>().showHomePage(),
              ),
              ListTile(
                title: Text('Setting'),
                onTap: () => context.read<NavigationCubit>().showSettingPage(),
              ),
            ],
          ),
        );
      },
    );
  }
}
