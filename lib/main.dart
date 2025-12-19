import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart'; // 🔹 Add this
import 'package:my_portfolio/about.dart';
import 'package:my_portfolio/experience.dart';
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

  @override
  void initState() {
    super.initState();
    _loadTheme(); 
  }

  // 🔹 Load theme from SharedPreferences
  Future<void> _loadTheme() async {
    final prefs = await SharedPreferences.getInstance();
    final isDark = prefs.getBool('isDark') ?? false;
    setState(() {
      _mode = isDark ? ThemeMode.dark : ThemeMode.light;
    });
  }

  Future<void> _toggleTheme() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _mode = _mode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    });
    await prefs.setBool('isDark', _mode == ThemeMode.dark);
  }

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
  final List<Widget> _tabs = [
    HomeScreen(),
    AboutScreen(),
    ExperienceScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('My Portfolio')),
        actions: [
          IconButton(
            onPressed: widget.toggleTheme,
            icon: Icon(Icons.brightness_6_rounded),
          )
        ],
      ),
      body: _tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'About'),
          BottomNavigationBarItem(icon: Icon(Icons.school), label: 'Experience'),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}