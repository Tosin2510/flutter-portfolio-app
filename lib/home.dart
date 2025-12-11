import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  void _launchUrl(String url) async {
    final uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw 'Could not launch $url';
    }
  }

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
                fit: BoxFit.cover, 
                alignment: Alignment.topCenter, // You can adjust which part is visible
              ),
            )
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
                  ),
              ),
            ],
            ),
          ),
          SizedBox(height: 28),
          Wrap(
            alignment: WrapAlignment.center,
            spacing: 12,
            runSpacing: 12,
            children: [
              Chip(label: Text('Flutter')),
              Chip(label: Text('Dart')),
              Chip(label: Text('Firebase')),
              Chip(label: Text('Git')),
              Chip(label: Text('REST APIs')),
            ],
          ),
          SizedBox(height: 28),
          Row(
            mainAxisAlignment:MainAxisAlignment.center,
            children: [
              IconButton(
                icon: FaIcon(FontAwesomeIcons.github),
                onPressed: () async {
                  _launchUrl("https://github.com/Tosin2510");
                },
                ),
              IconButton(
                icon: FaIcon(FontAwesomeIcons.linkedin),
                onPressed: () async {
                  _launchUrl("https://linkedin.com/in/tosin-folarin-8251ba325");
                },
                ),
              IconButton(
                icon: FaIcon(FontAwesomeIcons.instagram),
                onPressed: () async {
                  _launchUrl("https://instagram.com/Toxyno Folarin");
                },
                ),
              IconButton(
                icon: FaIcon(FontAwesomeIcons.twitter),
                onPressed: () async {
                  _launchUrl("https://x.com/TosinFolar76904");
                },
                )
            ],
          ),
          SizedBox(height: 28),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(Icons.email),
                      title: Text('folarintosin2007@gmail.com'),
                      onTap: () {
                        _launchUrl("mailto:folarintosin2007@gmail.com");
                      }

                    ),
                    Divider(),
                    ListTile(
                      leading: Icon(Icons.phone),
                      title: Text('+2348139619151'),
                      onTap: () {
                        _launchUrl("tel:+2348139619151");
                      }

                    ),
                    Divider(),
                    ListTile(
                      leading: Icon(Icons.location_on),
                      title: Text('Ibadan,Oyo State'),
                    )
                  ],
                ),
              ),
            
         ] ),

       );
  }
}