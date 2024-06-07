import 'package:flutter/material.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  bool isSwitched = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text(
          "Additional Information",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back, color: Colors.white),
        ),
      ),
      body: ListView(
        children: [
          const ListTile(
            leading: Icon(Icons.share_rounded, color: Colors.black),
            title: Text(
              "Share Dukaan App",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.w400,
              ),
            ),
            trailing: Icon(Icons.arrow_forward_ios, size: 20),
          ),
          const ListTile(
            leading: Icon(Icons.language, color: Colors.black),
            title: Text(
              "Change Language",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.w400,
              ),
            ),
            trailing: Icon(Icons.arrow_forward_ios, size: 20),
          ),
          ListTile(
            leading: const Icon(Icons.chat, color: Colors.black),
            title: const Text(
              "WhatsApp Chat Support",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.w400,
              ),
            ),
            trailing: Transform.scale(
              scale: 0.7,
              child: Switch(
                value: isSwitched,
                onChanged: (value) {
                  setState(() {
                    isSwitched = value;
                  });
                },
              ),
            ),
          ),
          const ListTile(
            leading: Icon(Icons.lock, color: Colors.black),
            title: Text(
              "Privacy Policy",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          const ListTile(
            leading: Icon(Icons.star, color: Colors.black),
            title: Text(
              "Rate Us",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          const ListTile(
            leading: Icon(Icons.exit_to_app, color: Colors.black),
            title: Text(
              "Sign Out",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          const SizedBox(height: 250),
          const Center(
            child: Text(
              "Version",
              style: TextStyle(color: Colors.grey, fontSize: 22),
            ),
          ),
          const Center(
            child: Text(
              "2.4.2",
              style: TextStyle(color: Colors.black, fontSize: 22),
            ),
          ),
        ],
      ),
    );
  }
}


