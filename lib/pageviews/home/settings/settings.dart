
import 'package:flutter/material.dart';

class SettingsWidget extends StatelessWidget {
  const SettingsWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Настройки', style: TextStyle(color: Colors.white),),
      ),
      body: Center(
        child: Text("Настройки", style: TextStyle(color: Colors.white),),
      ),
    );
  }
}
