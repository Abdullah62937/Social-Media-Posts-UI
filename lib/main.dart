import 'package:flutter/material.dart';
import 'package:my_app/Configuration/AppRoutese.dart';


void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Urbanist'
      ),
      initialRoute: AppRoutes.login,
      routes: AppRoutes.pages,
      debugShowCheckedModeBanner: false,
    );
  }
}
