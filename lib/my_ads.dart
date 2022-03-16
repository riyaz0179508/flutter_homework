import 'package:flutter/material.dart';
import 'package:homework/one.dart';
import 'package:homework/two.dart';
class MyAdds extends StatefulWidget {
  const MyAdds({Key? key}) : super(key: key);

  @override
  _MyAddsState createState() => _MyAddsState();
}

class _MyAddsState extends State<MyAdds> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          bottom: TabBar(
            labelStyle: TextStyle(color: Colors.black),
            labelColor: Colors.black,
            indicatorColor: Colors.grey,
            tabs: [
              Tab(icon: Icon(Icons.shopping_basket, color: Colors.grey),child: Text("My Ads")),
              Tab(icon: Icon(Icons.favorite, color: Colors.grey),child: Text("My Favourites")),
            ],
          ),
        ),
        body: TabBarView(
            children: [
              OnePage(),
              TwoPage(),
            ]),
      ),
    );
  }
}
