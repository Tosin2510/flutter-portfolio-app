import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Center(
            child: ClipOval(
  child: Image.asset(
    'assets/images/SAVE_20250618_212926.jpg',
    width: 120,
    height: 120,
    fit: BoxFit.cover, // This ensures the image fills the circle
    alignment: Alignment.topCenter, // You can adjust which part is visible
  ),
)
,
          ),
          Center(
            child: Column(
              children: [
              Text(
                "Folarin Tosin Racheal",
                style:GoogleFonts.poppins(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  )
              ),
              SizedBox(height: 5),
              Text(
                "Mobile App Developer",
                style:GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  )
              ),
              SizedBox(height: 5),
                Text(
                  "Bringing ideas to life with flutter.",
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                  )
              )

            ],
            ),
            
          )
        ],
        ),
    );
  }
}