import 'package:flutter/material.dart';

import 'login.dart';

class Profil extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const Profil({Key? key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Row(
            children: const [
              SizedBox(
                width: 80,
              ),
              Text(
                "Profile",
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),
          elevation: 1,
        ),
        body: Stack(
          children: [
            // Frame background
            Positioned(
              top: 80,
              left: (screenWidth - 320) / 2,
              child: SizedBox(
                width: 320,
                height: 78,
                child: Image.asset(
                  'assets/image/frame.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Column(
              children: [
                const SizedBox(height: 40), // Spasi di atas gambar profil
                Center(
                  child: SizedBox(
                    width: 50, // Set the width to 50 pixels
                    height: 50, // Set the height to 50 pixels
                    child: Image.asset(
                      'assets/image/profil.png',
                      fit: BoxFit
                          .contain, // Set the fit property to control scaling
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),

                const Text(
                  "Haloo, Hamzah Dg Tappu",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "7310072110000002",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    // Navigate to the login page when the button is tapped
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Login()),
                    );
                  },
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    margin: const EdgeInsets.only(top: 16, bottom: 16),
                    width: 288,
                    height: 48,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: Colors.orange,
                        width: 2.0,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: const Center(
                      child: Text(
                        "Keluar Aplikasi",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.orange,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
