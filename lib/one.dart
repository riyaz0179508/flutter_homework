import 'package:flutter/material.dart';

class OnePage extends StatefulWidget {
  const OnePage({Key? key}) : super(key: key);

  @override
  _OnePageState createState() => _OnePageState();
}

class _OnePageState extends State<OnePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Expanded(
                  child: GridView.builder(
                      itemCount: 4,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 10,
                          crossAxisCount: 2),
                      itemBuilder: (context, index) {
                        return Card(
                          child: Column(
                            children: [
                              Positioned(
                                child: Image.asset("assets/w.png", height: 85),
                                left: 10,
                                right: 10,
                                top: 30,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Apple Watch",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey)),
                              ),
                              Text("Series 6 . Red", style: TextStyle(fontSize: 15)),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("\$ 352", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.green),),
                              )
                            ],
                          ),
                        );
                      }),
                )
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
