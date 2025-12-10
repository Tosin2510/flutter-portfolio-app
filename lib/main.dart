import 'package:flutter/material.dart';
import 'package:my_portfolio/about.dart';
import 'package:my_portfolio/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  ThemeMode _mode = ThemeMode.light;

  void _toggleTheme() {
    setState(() {
      _mode = _mode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    });
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Portfolio',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.dark,
      ),
      themeMode: _mode,
      home: Mainscaffold(toggleTheme: _toggleTheme),
    );
}
}

class Mainscaffold extends StatefulWidget {
  final VoidCallback toggleTheme;

  const Mainscaffold({required this.toggleTheme, super.key});

  @override
  State<Mainscaffold> createState() => _MainscaffoldState();
}

class _MainscaffoldState extends State<Mainscaffold> {
  int _currentIndex = 0;
  final List<Widget> _tabs =
  [ HomeScreen(),AboutScreen(),];
  /*
  ExperienceTab(),
  ];
  */
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('My Portfolio')),
        actions: [
          IconButton(onPressed: widget.toggleTheme, icon: Icon(Icons.brightness_6_rounded))
        ],
      ),
      body: _tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'About')
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      )
    );
  }


}
