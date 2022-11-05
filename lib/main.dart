import 'package:flutter/material.dart';
import 'package:flutter_bootcampp/home_screen.dart';
import 'package:flutter_bootcampp/sreen_two.dart';

// import 'package:flutter_bootcampp/home_screen.dart';

void main() {
  runApp(MyWidget());
}

class MyWidget extends StatefulWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int x = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: HomeScreen.id,
      routes: {
        HomeScreen.id: (context) => HomeScreen(),
        ScreenTwo.id: (context) => ScreenTwo()
      },
      // home: HomeScreen(),
    );
  }
}
