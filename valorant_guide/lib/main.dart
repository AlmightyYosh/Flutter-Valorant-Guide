import 'package:flutter/material.dart';
import 'package:valorant_guide/data.dart';
import 'detail.dart';
import 'home.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Valorant App',
      debugShowCheckedModeBanner: false,

      theme: new ThemeData(
        primaryColor: Color(0xFFF3F5F7),
        accentColor: Color(0xFFD8ECF1),
        scaffoldBackgroundColor: Color(0xFFF3F5F7),
        platform: TargetPlatform.android,
      ),



      home: Home(),
      onGenerateRoute: (settings) => generateRoute(settings),
    );
  }

  generateRoute(RouteSettings settings){
    final path = settings.name.split('/');
    final name = path[1];

    Character character = characters.firstWhere((it) => it.name == name);
    return MaterialPageRoute(

      settings: settings,
      builder: (context) => Detail(character),
    );
  }
}
