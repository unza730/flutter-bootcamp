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
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.yellow[700],
            title: Text('Lottery App'),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              SizedBox(
                height: 100,
              ),
              Divider(
                color: Colors.black,
                thickness: .5,
              ),
              SizedBox(
                height: 100,
                child: VerticalDivider(
                  color: Colors.red,
                ),
              ),
              Divider(
                color: Colors.black,
                thickness: .5,
              ),
              Center(
                child: CircleAvatar(
                  radius: 100,
                  backgroundColor: Colors.black,
                  backgroundImage: NetworkImage(
                      "https://images.pexels.com/photos/5571709/pexels-photo-5571709.jpeg?auto=compress&cs=tinysrgb&w=600"),
                ),
              )
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
