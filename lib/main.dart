import 'package:flutter/material.dart';

void main() {
  
  runApp( MyApp() );

}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          backgroundColor: Colors.amber[700],
          title: const Text('My First Flutter App'),
          ),

        // body: Center(
        //   child: Container(
        //     child: const Text('HelLo World'),
        //     margin: const EdgeInsets.all(10),
        //     padding: const EdgeInsets.all(10),
        //     height: 50,
        //     width: 100,
        //     color: Colors.amberAccent,
        //   ),
        // ),
        // body: Column(
        //   crossAxisAlignment: CrossAxisAlignment.stretch,
        //   children: const [
        //     Icon(Icons.person),
        //     Icon(Icons.arrow_forward),
        //     Icon(Icons.pedal_bike),
        //   ], 
        // ),
        body: Stack(
          children: [
            Container(
              color: Colors.amberAccent[400],
              width: 100,
              height: 50,
              margin: const EdgeInsets.all(10),
              ),
              Positioned(
                child: Icon(Icons.verified),
                top: 25,
                left: 45,
              ),
          ],
          ),

          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.amber[700],
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.shop),
                label: "Shop",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.phone),
                label: "Call",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.people),
                label: "friends",
              ),
            ]
          ),
          
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            backgroundColor: Colors.amber[800],
            splashColor: Colors.amber,
            onPressed: () {
              print('pressed!');
            },
          ),

          drawer: Drawer(
            backgroundColor: Colors.grey,
            child: Center(
              child: Container(
                child: Text("Yel0 ma3 zEnItY"),
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(15),
                height: 50,
                width: 150,
                color: Colors.amberAccent,
              ),
            ),
            ),
      ),
    );
  }
}
