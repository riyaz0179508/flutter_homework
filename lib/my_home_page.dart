import 'package:extended_nested_scroll_view/extended_nested_scroll_view.dart';
import 'package:flutter/material.dart';

class MyHopmePage extends StatefulWidget {
  const MyHopmePage({Key? key}) : super(key: key);

  @override
  _MyHopmePageState createState() => _MyHopmePageState();
}
List <String> _categories =["Food", "Electronics", "Groceries", "Dress"];

class _MyHopmePageState extends State<MyHopmePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:   Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hello Afran.",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF000000)),
            ),
            Text(
              "Let’s gets something?",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF4F4C4C)),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                height: 110,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      height: 110,
                      width: 280,
                      decoration: BoxDecoration(
                        color: Color(0xffF46D38),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10, top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "40% Off During \n Covid 19",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFFFFFFFF)),
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Image.asset(
                                "assets/f.png",
                                height: 45,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      height: 110,
                      width: 280,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10, top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "40% Off During \n Covid 19",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFFFFFFFF)),
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Image.asset(
                                "assets/f.png",
                                height: 45,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                )
            ),
            SizedBox(height: 20,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Top Categories",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF000000)),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Text(
                    "View All",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xffF46D38)),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              height: 30,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _categories.length,
                  itemBuilder: (context, index){
                    return Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Container(
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.all(Radius.circular(20))
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
                            child: Text(_categories[index], style: TextStyle(color: Colors.white),),
                          )),
                    );
                  }
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: GridView.builder(
                  itemCount: 8,
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
      ));

  }
}
