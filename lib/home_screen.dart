import 'package:flutter/material.dart';
import 'package:flutter_bootcampp/sreen_two.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NAvigation Drawer'),
        backgroundColor: Color.fromARGB(255, 93, 115, 214),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, ScreenTwo.id);
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => ScreenTwo()));
              },
              child: Text(
                'Screen 1',
              ),
            )
          ],
        ),
      ),
    );
  }
}
