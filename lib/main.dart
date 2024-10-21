import 'package:flutter/material.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'screens/home_screen.dart'; // Directly using HomeScreen

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Notes App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const HomeScreen(), // Directly set HomeScreen as the home screen
      debugShowCheckedModeBanner: false, // Disable debug banner
    );
  }
}
