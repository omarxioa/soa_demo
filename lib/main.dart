import 'package:flutter/material.dart';
import 'package:website_soa/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'soa code',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Cairo',
        colorScheme: ColorScheme.fromSwatch(
                // primarySwatch: Colors.red,
                )
            .copyWith(
          secondary: Colors.black, // Accent color
        ),
        scaffoldBackgroundColor: Colors.white, // White background
        textTheme: TextTheme(
          headlineLarge: TextStyle(
            color: Color(0xffd11137), // Red for headings
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
          bodyMedium: TextStyle(
            color: Color(0xFF000000), // Black for regular text
            fontSize: 16,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xffd11137), // Button background color
            foregroundColor: Colors.white, // Button text color
          ),
        ),
      ),
      home: HomePage(),
    );
  }
}
