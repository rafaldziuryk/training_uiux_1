import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: <Color>[Colors.black, Colors.blue]),
            ),
          ),
          title: Text('Tutorial'),
          actions: [
            IconButton(
              icon: Icon(Icons.calendar_month),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.calendar_today),
              onPressed: () {},
            ),
          ],
          leading: IconButton(
            icon: Icon(Icons.add),
            onPressed: () {},
          ),
          bottom: TabBar(
            tabs: [
              Text('TAB1'),
              Text('TAB2'),
              Text('TAB3'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(
              child: Text('Tab'),
            ),
            Center(
              child: Text('Tab'),
            ),
            Center(
              child: Text('Tab'),
            ),
          ],
        ),
      ),
    );
  }
}
