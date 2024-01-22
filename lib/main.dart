import 'package:flutter/material.dart';
import 'package:zoom_app/screens/home_screen.dart';
import 'package:zoom_app/screens/login_screen.dart';
import 'package:zoom_app/utils/colors.dart';


void main() {

await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MeetingOn',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
      ),
      routes: {
        '/Login': (context) => const LoginSreen(),
        '/home':(context) => const HomeScreen(),
      },
      home: const LoginSreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
