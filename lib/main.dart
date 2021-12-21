import 'package:flutter/material.dart';
import 'package:login/pages/home_page.dart';
import 'package:login/pages/sign_up_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
      
        primarySwatch: Colors.blue,
      ),
      home: const SignUpPage(),
      routes: {
        HomePage.id:(context) => const HomePage(),
        SignUpPage.id:(context) => const SignUpPage(),
      },
    );
  }
}
