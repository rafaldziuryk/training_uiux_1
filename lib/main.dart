import 'package:flutter/material.dart';
import 'package:uiux1/page_one.dart';

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
        drawer: drawer(),
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
      items: const [
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
    return const TabBarView(
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
              begin: Alignment.topCenter, end: Alignment.bottomCenter, colors: <Color>[Colors.black, Colors.blue]),
        ),
      ),
      title: const Text('Tutorial'),
      actions: [
        IconButton(
          icon: const Icon(Icons.calendar_month),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const PageOne(),
            ));
          },
        ),
        IconButton(
          icon: const Icon(Icons.calendar_today),
          onPressed: () {},
        ),
      ],
      leading: IconButton(
        icon: const Icon(Icons.add),
        onPressed: () {},
      ),
      bottom: const TabBar(
        tabs: [
          Text('TAB1'),
          Text('TAB2'),
          Text('TAB3'),
        ],
      ),
    );
  }

  //  TODO Drawer
  Drawer drawer() {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: <Widget>[
            ListTile(
//              dense: true,
//              enabled: false,
//              isThreeLine: true,
//              subtitle: Text("Home, sweet home"),
//              trailing: Icon(Icons.settings),
//              contentPadding: EdgeInsets.all(16),
//              contentPadding: EdgeInsets.symmetric(vertical: 16),
//              contentPadding: EdgeInsets.only(left: 16),
              selected: selectedItem == 0,
              title: const Text("Flag"),
              leading: const Icon(Icons.flag),
              onTap: () {
                setState(() {
                  selectedItem = 0;
                });
                Navigator.of(context).pop();
              },
            ),
            ListTile(
              selected: selectedItem == 1,
              title: const Text("Bookmark"),
              leading: const Icon(Icons.bookmark),
              onTap: () {
                setState(() {
                  selectedItem = 1;
                });
                Navigator.of(context).pop();
              },
            ),
            ListTile(
              selected: selectedItem == 2,
              title: const Text("Book"),
              leading: const Icon(Icons.book),
              onTap: () {
                setState(() {
                  selectedItem = 2;
                });
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      ),
    );
  }
}
