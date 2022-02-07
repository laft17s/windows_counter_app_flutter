import 'package:flutter/material.dart';
import 'package:windows_counter_app/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Counter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        tooltipTheme: const TooltipThemeData(),
      ),
      home: const HomeScreen(title: 'Flutter Counter App'),
    );
  }
}
