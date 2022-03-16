import 'package:flutter/material.dart';
class TwoPage extends StatefulWidget {
  const TwoPage({Key? key}) : super(key: key);

  @override
  _TwoPageState createState() => _TwoPageState();
}

class _TwoPageState extends State<TwoPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    elevation: 5,
                    shadowColor: Colors.grey,
                    child: ListTile(
                      leading: Image.asset("assets/w.png"),
                      title: Text("Apple Watch", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,
                          color: Colors.grey)),
                      subtitle: Text("Series 6 . Red"),
                      trailing: Text("\$ 352", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.green),),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    elevation: 5,
                    shadowColor: Colors.grey,
                    child: ListTile(
                      leading: Image.asset("assets/w.png"),
                      title: Text("Apple Watch", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,
                          color: Colors.grey)),
                      subtitle: Text("Series 6 . Red"),
                      trailing: Text("\$ 352", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.green),),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    elevation: 5,
                    shadowColor: Colors.grey,
                    child: ListTile(
                      leading: Image.asset("assets/w.png"),
                      title: Text("Apple Watch", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,
                          color: Colors.grey)),
                      subtitle: Text("Series 6 . Red"),
                      trailing: Text("\$ 352", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.green),),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    elevation: 5,
                    shadowColor: Colors.grey,
                    child: ListTile(
                      leading: Image.asset("assets/w.png"),
                      title: Text("Apple Watch", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,
                          color: Colors.grey)),
                      subtitle: Text("Series 6 . Red"),
                      trailing: Text("\$ 352", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.green),),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    elevation: 5,
                    shadowColor: Colors.grey,
                    child: ListTile(
                      leading: Image.asset("assets/w.png"),
                      title: Text("Apple Watch", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,
                          color: Colors.grey)),
                      subtitle: Text("Series 6 . Red"),
                      trailing: Text("\$ 352", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.green),),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
    );
  }
}
