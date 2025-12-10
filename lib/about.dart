import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
   const AboutScreen({super.key});
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('About Me'),
        ),
        body: Center(
          child: Text(
            'This is the About Screen',
            style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}