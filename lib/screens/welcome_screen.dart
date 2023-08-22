import 'package:flutter/material.dart';
import 'package:movie_ticket_app_ui/screens/home_screen.dart';
import 'package:flutter_animate/flutter_animate.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            image: AssetImage("images/background.jpeg"),
            fit: BoxFit.cover,
            opacity: 0.4,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "DP Cineplex",
              style: TextStyle(
                fontSize: 50,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ).animate(delay: const Duration(milliseconds: 600))
                        .fade(duration: const Duration(milliseconds: 600))
                        .slideX(),
            SizedBox(height: 30),
            Text(
              "Grab your tickets now",
              style: TextStyle(
                color: Colors.white70,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ).animate(delay: const Duration(milliseconds: 600))
                        .fade(duration: const Duration(milliseconds: 800))
                        .slideX(),
            SizedBox(height: 50),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ),
                );
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                decoration: BoxDecoration(
                  color: Color(0xfff7d300).withOpacity(0.9),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  "Get Started",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ).animate(delay: const Duration(milliseconds: 600)).slideY(
            begin: 1,
            duration: const Duration(
              milliseconds: 600,
            ),
            curve: Curves.fastLinearToSlowEaseIn,
          ),
          ],
        ),
      ),
    );
  }
}
