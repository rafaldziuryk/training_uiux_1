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
  int selectedItem = 1;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: appbar(),
        body: body(),
        bottomNavigationBar: bottomNavigationBar(),
      ),
    );
  }

  BottomNavigationBar bottomNavigationBar() {
    return BottomNavigationBar(
      // type: BottomNavigationBarType.shifting,
      // showSelectedLabels: false,
      // showUnselectedLabels: true,
      currentIndex: selectedItem,
      onTap: (index) {
        setState(() {
          selectedItem = index;
        });
      },
      items: [
        BottomNavigationBarItem(
          backgroundColor: Colors.red,
          activeIcon: Icon(Icons.outlined_flag),
          icon: Icon(Icons.flag),
          label: 'Flag',
        ),
        BottomNavigationBarItem(
          backgroundColor: Colors.green,
          activeIcon: Icon(Icons.bookmark_outline),
          icon: Icon(Icons.bookmark),
          label: 'Bookmark',
        ),
        BottomNavigationBarItem(
          backgroundColor: Colors.green,
          activeIcon: Icon(Icons.book_outlined),
          icon: Icon(Icons.book),
          label: 'Book',
        )
      ],
    );
  }

  TabBarView body() {
    return TabBarView(
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
    );
  }

  AppBar appbar() {
    return AppBar(
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
    );
  }
}
