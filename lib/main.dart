import 'package:flutter/material.dart';
import 'package:system_setting/system_setting.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Settings")),
      body: ListView(
        children: <Widget>[
          ListTile(
            onTap: () {
              SystemSetting.goto(SettingTarget.WIFI);
            },
            title: Text('Wifi'),
            leading: Icon(Icons.wifi),
          ),
          ListTile(
            onTap: () {
              SystemSetting.goto(SettingTarget.BLUETOOTH);
            },
            title: Text('Bluetooth'),
            leading: Icon(Icons.bluetooth),
          ),
          ListTile(
            onTap: () {
              SystemSetting.goto(SettingTarget.LOCATION);
            },
            title: Text('Location'),
            leading: Icon(Icons.location_on),
          ),
          ListTile(
            onTap: () {
              SystemSetting.goto(SettingTarget.NOTIFICATION);
            },
            title: Text('Notification'),
            leading: Icon(Icons.notifications),
          ),
        ],
      ),
    );
  }
}
