import 'package:flutter/material.dart';
import 'package:swe_445_proj/screens/checkout.dart';
import 'package:swe_445_proj/screens/login.dart';
import 'package:swe_445_proj/screens/otp.dart';
import 'package:swe_445_proj/screens/register.dart';
import 'package:swe_445_proj/components/custome_app_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: '/',
      routes: {
        '/otp': (context) => const Otp(),
        '/register': (context) => const Register(),
        '/checkout': (context) => const Checkout(),
      },
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const MyHomePage(title: 'Khobar E-Shopping'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Login();
  }
}
