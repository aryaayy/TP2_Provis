import 'package:flutter/material.dart';
import 'welcome.dart';

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
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Color(0xFF4A707A),
          secondary: Color(0xFFC2C8C5),
          tertiary: Color(0xFF94B0B7),
          onPrimary: Color(0xFF37363B)
        ),
        fontFamily: 'Poppins',
      ),
      home: const WelcomePage(),
    );
  }
}

mixin AppMixin{
  FontWeight bold = FontWeight.w700;
  FontWeight semi = FontWeight.w600;
  double sideMargin = 20;
}