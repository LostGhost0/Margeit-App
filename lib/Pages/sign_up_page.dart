import 'package:flutter/material.dart';


class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Get the size of the screen
    final size = MediaQuery.of(context).size;
    // Calculate the width and height based on the screen size
    final width = size.width;
    final height = size.height;

    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 6,
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFFA52A2A),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30.0),
                  bottomRight: Radius.circular(30.0),
                ),
              ),
              child: Center(
                child: Container(
                  width: width * 0.25, // 25% of the screen width
                  height: width * 0.25, // 25% of the screen width
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Center(
                    child: Image.asset(
                      'lib/assets/icon1.png', // Ensure the path matches your asset's location
                      width: width * 0.15, // 15% of the screen width
                      height: width * 0.15, // 15% of the screen width
                      color: Color(0xFFA52A2A),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: Container(
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.1),
                    child: Text(
                      "An app where you can leave comments on book pages, fostering discussion and connection among readers worldwide",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: width * 0.04, // 4% of the screen width
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(height: height * 0.03), // 3% of the screen height
                  Container(
                    width: width * 0.5, // 50% of the screen width
                    child: ElevatedButton(
                      onPressed: () {
                        // Handle login action
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFFA52A2A),
                        padding: EdgeInsets.symmetric(vertical: height * 0.015),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                      child: Text("Log in"),
                    ),
                  ),
                  SizedBox(height: height * 0.015), // 1.5% of the screen height
                  Container(
                    width: width * 0.5, // 50% of the screen width
                    child: OutlinedButton(
                      onPressed: () {
                        // Handle registration action
                      },
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(color: Color(0xFFA52A2A)),
                        padding: EdgeInsets.symmetric(vertical: height * 0.015),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                      child: Text(
                        "Registration",
                        style: TextStyle(color: Color(0xFFA52A2A)),
                      ),
                    ),
                  ),
                  SizedBox(height: height * 0.03), // 3% of the screen height
                  Text(
                    "Lorem ipsum dolor sit amet consectetur",
                    style: TextStyle(
                      fontSize: width * 0.03, // 3% of the screen width
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
