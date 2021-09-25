import 'package:bmi_calc/ui/pages/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BML Calculator',
      theme: ThemeData(
        primaryColor: const Color(0xFF212336),
        brightness: Brightness.dark,
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF1B1E32),
        ),
        scaffoldBackgroundColor: const Color(0xFF1B1E32),
        backgroundColor: const Color(0xFF1B1E32),
        iconTheme: const IconThemeData().copyWith(
          color: Colors.white,
        ),
        textTheme: const TextTheme(
          headline1: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 40.0),
          headline2: TextStyle(
            color: Colors.grey,
            fontSize: 30.0,
          ),
          headline3: TextStyle(
            color: Colors.grey,
            fontSize: 20.0,
          ),

          bodyText1: TextStyle(
            color: Colors.grey,
            fontSize: 14.0,
          ),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          elevation: 3,
          title: const Text('BMI Calculator'),
          centerTitle: true,
        ),
        body: HomePage(),
      ),
    );
  }
}

enum Gender {
  male,
  female,
}
