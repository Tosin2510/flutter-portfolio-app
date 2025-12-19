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
    return ListView(
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
          Center(
            child: Text(
              "Interests",
              style: TextStyle(fontSize: 20, 
              fontWeight: FontWeight.bold),
              ),
          ),
            SizedBox(height: 12),
            Wrap(
              alignment: WrapAlignment.center,
              spacing: 12,
              runSpacing: 12,
              children: [
                Chip(label: Text('Flutter'),
                backgroundColor: Theme.of(context).colorScheme.primary.withValues(alpha: 0.1),),
                Chip(label: Text('Dart'),
                backgroundColor: Theme.of(context).colorScheme.primary.withValues(alpha: 0.1),),
                Chip(label: Text('Firebase'),
                backgroundColor: Theme.of(context).colorScheme.primary.withValues(alpha: 0.1),),
                Chip(label: Text('Git'),
                backgroundColor: Theme.of(context).colorScheme.primary.withValues(alpha: 0.1),),
                Chip(label: Text('REST APIs'),
                backgroundColor: Theme.of(context).colorScheme.primary.withValues(alpha: 0.1),),
              ],
            ),
            SizedBox(height: 28),
            Center(
              child: ElevatedButton.icon(
                onPressed: () {
                  _launchUrl("https://drive.google.com/uc?export=download&id=1yAq9FmUvN_N59UxJ65xmeXboVmUGCmHI");
                },
                icon:Icon(Icons.download),
                label:Text('Download Resume'),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  textStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),

              ),
            ),
            SizedBox(height: 28),
            Center(
            child: Text(
              "Connect ",
              style: TextStyle(fontSize: 20, 
              fontWeight: FontWeight.bold),
              ),
          ),
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
                    _launchUrl("https://www.linkedin.com/in/tosin-folarin/");
                  },
                  ),
                IconButton(
                  icon: FaIcon(FontAwesomeIcons.instagram),
                  onPressed: () async {
                    _launchUrl("https://instagram.com/toxynofolarin");
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
             Text(
              "Contact Me",
              style: TextStyle(fontSize: 20, 
              fontWeight: FontWeight.bold),
              ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.email),
                        title: Text("email"),
                        subtitle: Text("folarintosin2007@gmail.com"),
                        onTap: () {
                          _launchUrl("mailto:folarintosin2007@gmail.com");
                        }

                      ),
                      Divider(),
                      ListTile(
                        leading: Icon(Icons.phone),
                        title: Text("Phone"),
                        subtitle: Text("+2348139619151"),
                        onTap: () {
                          _launchUrl("tel:+2348139619151");
                        }

                      ),
                      Divider(),
                      ListTile(
                        leading: Icon(Icons.location_on),
                        title: Text("Location"),
                        subtitle: Text('Ibadan,Oyo State'),
                      )
                    ],
                  ),
                ),
            
        ] 
      );
  }
} 