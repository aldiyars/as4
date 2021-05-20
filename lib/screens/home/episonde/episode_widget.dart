
import 'package:flutter/material.dart';

class EpisodeWidget extends StatelessWidget {
  const EpisodeWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Эпизоды', style: TextStyle(color: Colors.white),),
      ),
      body: Center(
        child: Text("Эпизоды", style: TextStyle(color: Colors.white),),
      ),
    );
  }
}

