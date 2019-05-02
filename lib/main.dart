import 'package:flutter/material.dart';
import 'package:todo_app_ui/todo_card.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var appColors = [Color.fromRGBO(231, 129, 109, 1.0),Color.fromRGBO(99, 138, 223, 1.0),Color.fromRGBO(111, 194, 173, 1.0)];
  var cardIndex = 0;

    @override
    Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TODO', style: TextStyle(fontSize: 16),),
        backgroundColor: appColors[cardIndex],
        centerTitle: true,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Icon(Icons.search),
          ),
        ],
        elevation: 0,
      ),
      backgroundColor: appColors[cardIndex] ,
      drawer: Drawer(),
      body: Container(
        padding: const EdgeInsets.only(left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Icon(Icons.account_circle,
                size: 45,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0,4,0,4),
              child: Text('Hello, Jane.',
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
            ),
            Text('Looks like feel good.',
              style: TextStyle(color: Colors.white),
            ),
            Text('You have 3 tasks to do today.',
              style: TextStyle(color: Colors.white),
            ),
            TodoCard(),
          ],
        ),
      ),
    );
  }
}
