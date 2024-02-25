import 'package:chit_chat/Screens/home_screen.dart';
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
      debugShowCheckedModeBanner: false,
      title: 'Chit Chat',
      theme: ThemeData(
        fontFamily: "OpenSans",
        primaryColor: Colors.blueGrey,
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
            color: Colors.grey,
            titleTextStyle: TextStyle(color: Colors.white, fontSize: 28),
            actionsIconTheme: IconThemeData(color: Colors.white)),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: const Color(0xFF128C7E),
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
