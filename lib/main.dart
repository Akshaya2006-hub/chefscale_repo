import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';  // Import Google Fonts package

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SignInPage(),
    );
  }
}

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Color(0xFFC2B280)),
          onPressed: () {
            // Handle back button press
          },
        ),
        centerTitle: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Sign in',
                style: GoogleFonts.afacad(  // Use GoogleFonts.afacad() here
                  color: Color(0xFFC2B280),
                  fontSize: 38,  // Font size updated to 38
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xFFE5E5E5)),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    labelText: 'Username',
                    labelStyle: TextStyle(color: Color(0xFFE5E5E5)),
                    border: InputBorder.none,
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 12.0, vertical: 16.0),
                  ),
                  style: TextStyle(color: Color(0xFFE5E5E5)),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xFFE5E5E5)),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: TextStyle(color: Color(0xFFE5E5E5)),
                    border: InputBorder.none,
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 12.0, vertical: 16.0),
                  ),
                  style: TextStyle(color: Color(0xFFE5E5E5)),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Handle login logic
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF2E2E2E),
                  foregroundColor: const Color(0xFFE5E5E5),
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                child: Text(
                  'Login',
                  style: GoogleFonts.afacad(fontSize: 30),  // Font size updated to 30
                ),
              ),
              const SizedBox(height: 20),
              const Row(
                children: <Widget>[
                  Expanded(child: Divider(color: Color(0xFFE5E5E5))),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      'OR',
                      style: TextStyle(color: Color(0xFFE5E5E5)),
                    ),
                  ),
                  Expanded(child: Divider(color: Color(0xFFE5E5E5))),
                ],
              ),
              const SizedBox(height: 20),
              // "Continue with Google" button with adjusted font size
              ElevatedButton.icon(
                onPressed: () {
                  // Handle Google login
                },
                icon: const Icon(
                  Icons.g_mobiledata,
                  color: Colors.black,
                  size: 35,  // Icon size remains 35
                ),
                label: Text(
                  'Continue with Google',
                  style: GoogleFonts.afacad(
                    color: Colors.black,
                    fontSize: 30,  // Font size updated to 30
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFFFF8E7),
                  foregroundColor: Colors.black,
                  minimumSize: const Size(double.infinity, 60),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              // "Continue with number" button with adjusted font size
              ElevatedButton.icon(
                onPressed: () {
                  // Handle phone number login
                },
                icon: const Icon(
                  Icons.phone,
                  color: Colors.black,
                  size: 35,  // Icon size remains 35
                ),
                label: Text(
                  'Continue with number',
                  style: GoogleFonts.afacad(
                    color: Colors.black,
                    fontSize: 30,  // Font size updated to 30
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFFFF8E7),
                  foregroundColor: Colors.black,
                  minimumSize: const Size(double.infinity, 60),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
