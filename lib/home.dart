import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        color: const Color(0xff51A8FF),
        width: double.infinity,
        height: 350,
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hi edi',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
            Text(
              "Lets find\nyour top doctor! ",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.w600),
            )
          ],
        ),
      ),
    );
  }
}
