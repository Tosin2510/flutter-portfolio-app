import 'package:flutter/material.dart';
class ExperienceScreen extends StatelessWidget {
  const ExperienceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Education',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 12),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius:BorderRadius.circular(12)),
              child: ListTile(
                leading: Icon(Icons.school,color: Colors.blue,),
                title: Text("Computer Science Student – University of Ibadan"),
                subtitle: Text('''2025 - Present \n
                • Learning Flutter & Dart \n
                • Exploring mobile app development'''),
                )
            ),
            SizedBox(height: 16),
            Text(
              'Professional Experience',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 12),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius:BorderRadius.circular(12)),
              child: ListTile(
                leading: Icon(Icons.code,color: Colors.green,),
                title: Text("Portfolio App"),
                subtitle: Text('''
                • Built personal profile app using Flutter\n
                • Implemented navigation, UI, and dark/light theme\n
                • Showcased interests, socials, and resume download'''),
                )
            ),
            SizedBox(height: 12),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius:BorderRadius.circular(12)),
              child: ListTile(
                leading: Icon(Icons.code,color: Colors.green,),
                title: Text("To-do App"),
                subtitle: Text('''
                • Built a to-do app using Flutter\n
                • Implemented add tasks button and state management\n
                • Showcased task title,due date and add task button.\n
                •Also included a delete button and a checkbox to mark tasks as completed.'''),
                )
            ),
            SizedBox(height: 12),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius:BorderRadius.circular(12)),
              child: ListTile(
                leading: Icon(Icons.code,color: Colors.green,),
                title: Text("Sign Up & Login page"),
                subtitle: Text('''
                • Built a sign up and login page using Flutter and firebase\n
                • Made use of firebase authentication for user login and sign up\n
                • Implemented email and password validation'''),
                ),
            ),
            

          ],
        ),
        );
  }
}