import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'beranda.dart';

class Login extends StatefulWidget {
  const Login({super.key});
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _isObscure = true; // Initially, password is obscured.
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  Color _buttonColor = Colors.grey; // Initial button color

  void _togglePasswordVisibility() {
    setState(() {
      _isObscure = !_isObscure;
    });
  }

  @override
  void initState() {
    super.initState();
    // Listen for changes in the text fields

    _passwordController.addListener(_checkInput);
  }

  void _checkInput() {
    setState(() {
      // Check if both fields have content to change the button color
      if (_usernameController.text.isNotEmpty &&
          _passwordController.text.isNotEmpty) {
        _buttonColor = Colors.orange; // Change the button color to green
      } else {
        _buttonColor = Colors.grey; // Keep the button color as grey
      }
    });
  }

  @override
  void dispose() {
    // Clean up the controllers
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        // backgroundColor: Colors.amberAccent,
        body: Stack(
      children: [
        Positioned(
          top: 0,
          right: 0,
          left: 0,
          child: Container(
            height: 300,
            width: screenWidth,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/image/background.png'),
                  fit: BoxFit.fill),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  "assets/image/vote.svg",
                  width: 60,
                  height: 60,
                ),
                // Image.asset(
                //   'assets/image/vote.png',
                //   width: 60,
                //   height: 60,
                // ),
                const SizedBox(
                  height: 12,
                ),
                const Text(
                  "Selamat Datang",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                      fontSize: 25),
                ),
                const Text(
                  "Sistem Vote Saksi",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
                const SizedBox(
                  height: 12,
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 220,
          left: 0,
          right: 0,
          child: Container(
            height: 320,
            // width: MediaQuery.of(context).size.width - 40,
            width: screenWidth - 40,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      blurRadius: 15,
                      spreadRadius: 5)
                ]),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: const [
                          Text(
                            "Silahkan masukkan username",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: 10), // Spasi antara dua baris teks
                          Text(
                            "dan password anda",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          // Tambahan elemen-elemen UI lainnya seperti TextField, Tombol, dsb.
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  child: TextFormField(
                    controller: _usernameController,
                    // obscureText: _isObscure, // Toggle password visibility
                    decoration: const InputDecoration(
                      prefixIcon: Icon(
                        Icons.account_circle,
                        color: Colors.grey,
                      ),
                      hintText: "Username", // Add the hint text here

                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin:
                      const EdgeInsets.only(bottom: 16, right: 16, left: 16),
                  child: TextFormField(
                    controller: _passwordController,
                    obscureText: _isObscure, // Toggle password visibility
                    decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.lock_outline,
                        color: Colors.grey,
                      ),
                      hintText: "Password", // Add the hint text here
                      suffixIcon: IconButton(
                        icon: Icon(
                          _isObscure ? Icons.visibility : Icons.visibility_off,
                          color: Colors.grey,
                        ),
                        onPressed: _togglePasswordVisibility,
                      ),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    if (_usernameController.text.isNotEmpty &&
                        _passwordController.text.isNotEmpty) {
                      // Only navigate if both fields have content
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) =>  const Beranda(),
                        ),
                      );
                    }
                  },
                  child: Container(
                    width: 288,
                    height: 48,
                    decoration: BoxDecoration(
                      color: _buttonColor, // Warna latar belakang tombol
                      borderRadius:
                          BorderRadius.circular(8), // Sudut tombol yang bulat
                    ),
                    child: const Center(
                      child: Text(
                        "Masuk",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white, // Warna teks tombol
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
