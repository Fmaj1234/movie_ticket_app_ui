import 'package:flutter/material.dart';

import 'package:movie_ticket_app_ui/screens/welcome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xff212429),
      ),
      home: WelcomeScreen(),
    );
  }
}
