import 'package:flutter/material.dart';
import 'package:weather_app/widgets/navigation_drawer.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: DrawerNavigation(),
      body: Container(child: _SettingsList()),
    );
  }

  Widget _SettingsList() {
    return ListView(
      children: [
        ListTile(
          leading: Icon(Icons.search),
          title: Text('Searching City'),
          trailing: Text('Kiev', style: TextStyle(fontSize: 18)),
        ),
        ListTile(
          title: Text('Dark Mode'),
          trailing: Switch(value: true, onChanged: (_) {}),
        ),
        PopupMenuButton(
            itemBuilder: (context) => <PopupMenuEntry>[
                  const PopupMenuItem(child: Text('Celsuis')),
                  const PopupMenuItem(child: Text('Faranther')),
                  const PopupMenuItem(child: Text('Clevisd'))
                ])
      ],
    );
  }
}
