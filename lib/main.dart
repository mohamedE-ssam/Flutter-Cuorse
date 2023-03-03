import 'package:flutter/material.dart';
import 'package:tasks/pages/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Tasks',
        home: const LoginScreen(),
        theme: ThemeData(
          primaryColor: Colors.purple,
          inputDecorationTheme: const InputDecorationTheme(
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.purple)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.purple)),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.purple)),
            errorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.purple)),
            focusedErrorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.purple)),
          ),
        ));
  }
}
