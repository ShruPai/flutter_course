import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
// import 'package:english_words/english_words.dart';
//import 'package:audioplayers/src/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void Playsound(int Snumber){
    final player = AudioPlayer();
    player.play(AssetSource('note$Snumber.wav'));
  }

  Expanded concise({int n, Color colors}){
    return Expanded(
      child: FlatButton(
        color: colors,
        onPressed: ()async{
          Playsound(n);
        },),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              concise(n:1, colors : Colors.red),
              concise(n:2, colors : Colors.orange),
              concise(n:3, colors : Colors.yellow),
              concise(n:4, colors : Colors.green),
              concise(n:5, colors : Colors.blue),
              concise(n:6, colors : Colors.indigo),
              concise(n:7, colors : Colors.deepPurpleAccent),

              // Expanded(
              //   child: FlatButton(
              //     color: Colors.red,
              //   onPressed: ()async{
              //     Playsound(1);
              //     // final player= AudioCache();//Creates new player to play local audio
              //     // player.load('note1.wav');
              //   },),
              // ),
              // Expanded(
              //   child: FlatButton(
              //     color: Colors.orange,
              //     onPressed: ()async{
              //       Playsound(2);
              //       // final player= AudioCache();//Creates new player to play local audio
              //       // player.load('note1.wav');
              //     },),
              // ),
              // Expanded(
              //   child: FlatButton(
              //     color: Colors.yellow,
              //     onPressed: ()async{
              //       Playsound(3);
              //       // final player= AudioCache();//Creates new player to play local audio
              //       // player.load('note1.wav');
              //     },),
              // ),
              // Expanded(
              //   child: FlatButton(
              //     color: Colors.green,
              //     onPressed: ()async{
              //       Playsound(4);
              //       // final player= AudioCache();//Creates new player to play local audio
              //       // player.load('note1.wav');
              //     },),
              // ),
              // Expanded(
              //   child: FlatButton(
              //     color: Colors.blue,
              //     onPressed: ()async{
              //       Playsound(5);
              //       // final player= AudioCache();//Creates new player to play local audio
              //       // player.load('note1.wav');
              //     },),
              // ),
              // Expanded(
              //   child: FlatButton(
              //     color: Colors.indigo,
              //     onPressed: ()async{
              //       Playsound(6);
              //       // final player= AudioCache();//Creates new player to play local audio
              //       // player.load('note1.wav');
              //     },),
              // ),
              // Expanded(child:FlatButton(
              //   color: Colors.deepPurpleAccent,
              //   onPressed: ()async{
              //     Playsound(7);
              //     // final player= AudioCache();//Creates new player to play local audio
              //     // player.load('note1.wav');
              //   },),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}


// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         // This is the theme of your application.
//         //
//         // Try running your application with "flutter run". You'll see the
//         // application has a blue toolbar. Then, without quitting the app, try
//         // changing the primarySwatch below to Colors.green and then invoke
//         // "hot reload" (press "r" in the console where you ran "flutter run",
//         // or simply save your changes to "hot reload" in a Flutter IDE).
//         // Notice that the counter didn't reset back to zero; the application
//         // is not restarted.
//         primarySwatch: Colors.blue,
//       ),
//       home: const MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key, required this.title}) : super(key: key);
//
//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.
//
//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".
//
//   final String title;
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;
//
//   void _incrementCounter() {
//     setState(() {
//       // This call to setState tells the Flutter framework that something has
//       // changed in this State, which causes it to rerun the build method below
//       // so that the display can reflect the updated values. If we changed
//       // _counter without calling setState(), then the build method would not be
//       // called again, and so nothing would appear to happen.
//       _counter++;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.
//     //
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     return Scaffold(
//       appBar: AppBar(
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         title: Text(widget.title),
//       ),
//       body: Center(
//         // Center is a layout widget. It takes a single child and positions it
//         // in the middle of the parent.
//         child: Column(
//           // Column is also a layout widget. It takes a list of children and
//           // arranges them vertically. By default, it sizes itself to fit its
//           // children horizontally, and tries to be as tall as its parent.
//           //
//           // Invoke "debug painting" (press "p" in the console, choose the
//           // "Toggle Debug Paint" action from the Flutter Inspector in Android
//           // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
//           // to see the wireframe for each widget.
//           //
//           // Column has various properties to control how it sizes itself and
//           // how it positions its children. Here we use mainAxisAlignment to
//           // center the children vertically; the main axis here is the vertical
//           // axis because Columns are vertical (the cross axis would be
//           // horizontal).
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headline4,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
