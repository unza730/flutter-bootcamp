import 'package:flutter/material.dart';

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
      home: Scaffold(
          backgroundColor: Color.fromARGB(255, 54, 49, 49),
          appBar: AppBar(
            backgroundColor: Colors.yellow[700],
            title: Text('Lottery App'),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Text('Lottery winning number is $x',
                    style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
          floatingActionButton: FloatingActionButton(
              onPressed: () {
                // x++;

                // setState(() {
                //   // x++;
                // });
                // print(x.toString());
              },
              child: Icon(Icons.refresh))),
    );
  }
}
