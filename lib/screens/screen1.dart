import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  bool switchValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        leading: const Icon(Icons.arrow_back),
        backgroundColor: Colors.blue,
        title: const Text("Additional Information"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            const ListTile(
              leading: Icon(Icons.share),
              title: Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text("Share Dukaan App"),
              ),
              trailing: Icon(Icons.arrow_forward_ios, size: 15),
            ),
            const ListTile(
              leading: Icon(Icons.language),
              title: Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text("Change Language"),
              ),
              trailing: Icon(Icons.arrow_forward_ios, size: 15),
            ),
            ListTile(
              leading: const FaIcon(FontAwesomeIcons.whatsapp),
              title: const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text("WhatsApp Chat Support"),
              ),
              trailing: SizedBox(
                width: 30,
                height: 30,
                child: CupertinoSwitch(
                  value: switchValue,
                  activeColor: Colors.blue,
                  onChanged: (value) {
                    setState(() {
                      switchValue = value;
                    });
                  },
                ),
              ),
            ),
            const ListTile(
              leading: Icon(Icons.lock),
              title: Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text("Privacy Policy"),
              ),
            ),
            const ListTile(
              leading: Icon(Icons.star_border),
              title: Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text("Rate Us"),
              ),
            ),
            const ListTile(
              leading: Icon(Icons.logout_outlined),
              title: Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text("Sign Out"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}