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
          backgroundColor: Color.fromARGB(255, 170, 126, 112),
          appBar: AppBar(
            backgroundColor: Colors.yellow[700],
            title: Text('I am Rich'),
          ),
          body: SafeArea(
            // child: Column(
            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   children: [
            //     Row(
            //       mainAxisAlignment: MainAxisAlignment.center,
            //       children: [
            //         Text("Hello from row"),
            //         Icon(Icons.abc_outlined),
            //       ],
            //     ),
            //     Container(
            //       height: 100,
            //       width: 100,
            //       color: Colors.yellow[900],
            //       child: const Center(child: Text("Hello Unza")),
            //     ),
            //     Container(
            //       height: 100,
            //       width: 100,
            //       color: Colors.yellow[900],
            //       child: const Center(child: Text("Hello Unza")),
            //     ),
            //     Container(
            //       height: 100,
            //       width: 100,
            //       color: Colors.yellow[900],
            //       child: const Center(child: Text("Hello Unza")),
            //     ),
            //   ],
            // ),
            child: Center(
              child: Text(
                x.toString(),
                style: TextStyle(fontSize: 50),
              ),
            ),
          ),
          floatingActionButton: FloatingActionButton(
              onPressed: () {
                x++;
                setState(() {
                  // x++;
                });
                print(x.toString());
              },
              child: Icon(Icons.add))),
    );
  }
}
