import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
   const AboutScreen({super.key});
    @override
    Widget build(BuildContext context) {
      return SingleChildScrollView(
          padding: EdgeInsets.all( 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'About Me',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              Text(
                ''' Hi, I’m Folarin Tosin, a passionate beginner Flutter developer and tech enthusiast. 
I specialize in Flutter development, creating seamless, interactive, and performant applications for both Android and iOS. 

My journey into programming started with Python, building small projects like ATM simulators,simple calculator and finance trackers. This helped me understand logic, problem-solving, and software design from the ground up. 

Over time, I discovered Flutter and instantly fell in love with its ability to create beautiful UIs with a single codebase. I have hands-on experience in:

• Flutter & Dart  
• Firebase & Integration  
• Version Control with Git/GitHub  

Outside development, I enjoy learning about new technologies. My goal is to build applications that not only function well but also delight users with a clean and intuitive experience.

I believe in continuous growth, collaboration, and bringing ideas to life through code. Every project I work on is an opportunity to learn, innovate, and deliver value.''',
                style: TextStyle(fontSize: 16,height: 1.6),
              ),
              SizedBox(height: 16),
              Text(
                'Skills:',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                '-Python programming\n- Flutter & Dart\n- Firebase Integration\n- Git & Version Control',
                style: TextStyle(fontSize: 16,height: 1.6),
              ),
            ],
          ),
        );
  }
}