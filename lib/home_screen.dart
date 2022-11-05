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
      drawer: Drawer(
        child: ListView(
          // listview is just like to Column
          children: [
            // DrawerHeader(child: Text('Unza Sohail'))
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 39, 114, 176),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://images.pexels.com/photos/1382731/pexels-photo-1382731.jpeg?auto=compress&cs=tinysrgb&w=600"),
              ),
              accountName: Text('Unza Sohail'),
              accountEmail: Text('unzasohail@gmail.com'),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Screen Two'),
              onTap: () {
                Navigator.pushNamed(context, ScreenTwo.id);
              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home Screen'),
              onTap: () {
                Navigator.pushNamed(context, HomeScreen.id);
              },
            ),
            ListTile(
              leading: Icon(Icons.login_outlined),
              title: Text('Logout'),
              onTap: () {
                Navigator.pushNamed(context, ScreenTwo.id);
              },
            ),
          ],
        ),
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
