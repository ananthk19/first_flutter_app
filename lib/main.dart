import 'package:flutter/material.dart';
import 'dart:math';

Color getColor(){
  Color color;
  const color_pick = [Colors.grey, Colors.white, Colors.black12, Colors.orange ];
  var _random = new Random();
  color = color_pick[_random.nextInt(color_pick.length)];
  return color;
}


void main() {
  
  runApp( MyApp() );

}

// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {

//   int count = 0;

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         backgroundColor: Colors.grey,
//         appBar: AppBar(
//           backgroundColor: Colors.amber[700],
//           title: const Text('My First Flutter App'),
//           ),

//         // body: Center(
//         //   child: Container(
//         //     child: const Text('HelLo World'),
//         //     margin: const EdgeInsets.all(10),
//         //     padding: const EdgeInsets.all(10),
//         //     height: 50,
//         //     width: 100,
//         //     color: Colors.amberAccent,
//         //   ),
//         // ),
//         // body: Column(
//         //   crossAxisAlignment: CrossAxisAlignment.stretch,
//         //   children: const [
//         //     Icon(Icons.person),
//         //     Icon(Icons.arrow_forward),
//         //     Icon(Icons.pedal_bike),
//         //   ], 
//         // ),
//         // body: Stack(
//         //   children: [
//         //     Container(
//         //       color: Colors.amberAccent[400],
//         //       width: 100,
//         //       height: 50,
//         //       margin: const EdgeInsets.all(10),
//         //       ),
//         //       Positioned(
//         //         child: Icon(Icons.verified),
//         //         top: 25,
//         //         left: 45,
//         //       ),
//         //   ],
//         //   ),
//         // body: ListView(
//         //   scrollDirection: Axis.horizontal,
//         //   addAutomaticKeepAlives: false,
//         //   children: [
//         //     Container(
//         //       color: Colors.white,
//         //       width: 500,
//         //       height: 500,
//         //     ),
//         //     Container(
//         //       color: Colors.grey,
//         //       width: 500,
//         //       height: 500,
//         //     ),
//         //     Container(
//         //       color: Colors.black,
//         //       width: 500,
//         //       height: 500,
//         //     ),
//         //   ],
//         // ),
//         // body: ListView.builder(
//         //   itemBuilder: (_,index){
//         //     return Container(
//         //       color: getColor(),
//         //       width: 500,
//         //       height: 500,
//         //     );
//         //   }
//         // ),

//         body:Center(
//           child: Text(
//             '$count',
//             textScaleFactor: 3,
//             ),
//           ),

//           // bottomNavigationBar: BottomNavigationBar(
//           //   backgroundColor: Colors.amber[700],
//           //   items: const [
//           //     BottomNavigationBarItem(
//           //       icon: Icon(Icons.shop),
//           //       label: "Shop",
//           //     ),
//           //     BottomNavigationBarItem(
//           //       icon: Icon(Icons.phone),
//           //       label: "Call",
//           //     ),
//           //     BottomNavigationBarItem(
//           //       icon: Icon(Icons.people),
//           //       label: "friends",
//           //     ),
//           //   ]
//           // ),
          
//           // floatingActionButton: FloatingActionButton(
//           //   child: Icon(Icons.add),
//           //   backgroundColor: Colors.amber[800],
//           //   splashColor: Colors.amber,
//           //   onPressed: () {
//           //     setState(() {
//           //       count++;
//           //     });
//           //   },
//           // ),

//           // drawer: Drawer(
//           //   backgroundColor: Colors.grey,
//           //   child: Center(
//           //     child: Container(
//           //       child: Text("Yel0 ma3 zEnItY"),
//           //       margin: const EdgeInsets.all(10),
//           //       padding: const EdgeInsets.all(15),
//           //       height: 50,
//           //       width: 150,
//           //       color: Colors.amberAccent,
//           //     ),
//           //   ),
//           //   ),
//       ),
//     );
//   }
// }

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("FIRST PAGE"),
          backgroundColor: Colors.green,
        ),
        body: ElevatedButton(
          child: Text("2nd Page"),
          onPressed: () {
            Navigator.push(
              context, 
              MaterialPageRoute(builder: (_) => secondPage()),
              );
          },
        ),
      ),
    );
  }
}

class secondPage extends StatelessWidget {
  const secondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("SECOND PAGE"),
          backgroundColor: Colors.purple,
        ),
        // body: ElevatedButton(
        //   child: Text("1st Page"),
        //   onPressed: () {
        //     Navigator.push(
        //       context,
        //       MaterialPageRoute(builder: (_) => firstPage()),
        //     );
        //   },
        //   ),
      ),
    );
  }
}