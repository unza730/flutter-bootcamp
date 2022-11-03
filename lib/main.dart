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
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.black,
                  backgroundImage: NetworkImage(
                      'https://images.pexels.com/photos/5571709/pexels-photo-5571709.jpeg?auto=compress&cs=tinysrgb&w=600'),
                ),
                title: Text('Asif Taj Tech'),
                subtitle: Text('Subscribe to my channel'),
                trailing: Text('3:51 PM'),
              ),
              ListView.builder(
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return const ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.black,
                        backgroundImage: NetworkImage(
                            'https://images.pexels.com/photos/5571709/pexels-photo-5571709.jpeg?auto=compress&cs=tinysrgb&w=600'),
                      ),
                      title: Text('Asif Taj Tech'),
                      subtitle: Text('Subscribe to my channel'),
                      trailing: Text('3:51 PM'),
                    );
                  })
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
