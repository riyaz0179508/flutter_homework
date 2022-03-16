import 'package:flutter/material.dart';
import 'package:homework/add.dart';
import 'package:homework/chat.dart';
import 'package:homework/my_ads.dart';
import 'package:homework/my_home_page.dart';
import 'package:homework/profile_page.dart';

void main() {
  runApp(MyApp());
}

int _currentIndex = 0;
final _pages = [
  MyHopmePage(),
  MyAdds(),
  AddPage(),
  ChatPage(),
  ProfilePage()
];

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BottomController(),
    );
  }
}

class BottomController extends StatefulWidget {
  const BottomController({Key? key}) : super(key: key);

  @override
  _BottomControllerState createState() => _BottomControllerState();
}

class _BottomControllerState extends State<BottomController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_basket), label: "My Ads"),
            BottomNavigationBarItem(
                icon: Icon(Icons.add_box_outlined), label: "Add"),
            BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chat"),
            BottomNavigationBarItem(
                icon: Icon(Icons.perm_identity_outlined), label: "Profile"),
          ]),
      body: _pages[_currentIndex],
    );
  }
}
