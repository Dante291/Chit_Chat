import 'package:chit_chat/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chit Chat',
      theme: ThemeData(
        primaryColor: const Color(0xFF075E54),
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
            color: Color(0xFF075E54),
            titleTextStyle: TextStyle(color: Colors.white, fontSize: 28),
            actionsIconTheme: IconThemeData(color: Colors.white)),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: const Color(0xFF128C7E),

          // secondary: const,
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
