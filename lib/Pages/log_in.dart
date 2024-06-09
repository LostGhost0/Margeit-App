import 'package:flutter/material.dart';
import 'package:marge_it_app/Pages/sign_up_page.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            // Handle back button
                  Navigator.push(context,
              MaterialPageRoute(builder: (context) => WelcomeScreen()));
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.1),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: height * 0.05),
              Center(
                child: Image.asset(
                  'lib/assets/icon1.png',
                  width: width * 0.3,
                  height: width * 0.3,
                ),
              ),
              SizedBox(height: height * 0.02),
              Text(
                "Login",
                style: TextStyle(
                  fontSize: width * 0.06,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: height * 0.03),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              SizedBox(height: height * 0.02),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              SizedBox(height: height * 0.01),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    // Handle forgot password
                  },
                  child: Text(
                    "Forgot password?",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              SizedBox(height: height * 0.02),
              Container(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    // Handle login action
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFFA52A2A),
                    padding: EdgeInsets.symmetric(vertical: height * 0.02),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  child: Text("Log in"),
                ),
              ),
              SizedBox(height: height * 0.02),
              Text("Or register with:"),
              SizedBox(height: height * 0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Image.asset('lib/assets/facebook_icon.png'), // Ensure you have this icon
                    iconSize: width * 0.1,
                    onPressed: () {
                      // Handle Facebook login
                    },
                  ),
                  SizedBox(width: width * 0.05),
                  IconButton(
                    icon: Image.asset('lib/assets/google_icon.png'), // Ensure you have this icon
                    iconSize: width * 0.1,
                    onPressed: () {
                      // Handle Google login
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
