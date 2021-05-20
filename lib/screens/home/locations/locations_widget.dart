
import 'package:flutter/material.dart';

class LocationsWidget extends StatelessWidget {
  const LocationsWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Локациии', style: TextStyle(color: Colors.white),),
      ),
      body: Center(
        child: Text("Локациии", style: TextStyle(color: Colors.white),),
      ),
    );
  }
}
