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
            children: [
              Padding(
                padding: const EdgeInsets.all(9.0),
                child: TextFormField(
                  // keyboardType: TextInputType.phone,
                  keyboardType: TextInputType.emailAddress,
                  cursorColor: Colors.black,
                  enabled: true,
                  style: TextStyle(fontSize: 18, color: Colors.black),
                  decoration: InputDecoration(
                      filled: true,
                      prefixIcon: Icon(Icons.alternate_email),
                      fillColor: Colors.grey.withOpacity(0.3),
                      hintText: 'Email',
                      labelText: 'Email typing',
                      hintStyle: TextStyle(fontSize: 14, color: Colors.red),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red, width: 1),
                          borderRadius: BorderRadius.circular(10))),

                  onChanged: (value) => {print(value)},
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
