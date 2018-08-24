import 'package:flutter/material.dart';
import 'myhomepage.dart';
import 'helloscreen.dart';
import 'iconscreen.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      routes: <String, WidgetBuilder>{
        //5
        '/screen1': (BuildContext context) => new HelloScreen(
              title: 'frog',
            ), //6
        '/screen2': (BuildContext context) => new MyHomePage(
              title: 'rabbit',
            ), //7
        '/screen3': (BuildContext context) => new IconScreen(
              title: 'turtle',
            ),
      },
      theme: new ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or press Run > Flutter Hot Reload in IntelliJ). Notice that the
        // counter didn't reset back to zero; the application is not restarted.
        primarySwatch: Colors.pink,
      ),
      initialRoute: "screen1",
      home: new HelloScreen(title: 'Flutter Demo Home Page'),
    );
  }
}
