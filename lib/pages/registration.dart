import 'package:flutter/material.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Register as:',
              style: TextStyle(
                fontSize: 24.0,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Container(
              width: screenWidth * 0.8,
              height: 60.0,
              margin: const EdgeInsets.only(bottom: 20.0),
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.white,
                  side: const BorderSide(color: Colors.purple, width: 2.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                onPressed: () {
                  // Add route here
                },
                child: const Text(
                  'Community member',
                  style: TextStyle(color: Colors.purple, fontSize: 20),
                ),
              ),
            ),
            SizedBox(
              width: screenWidth * 0.8,
              height: 60.0,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.white,
                  side: const BorderSide(color: Colors.purple, width: 2.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                onPressed: () {
                  // Add route here
                },
                child: const Text(
                  'Rescue Center / Shelter',
                  style: TextStyle(color: Colors.purple, fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
