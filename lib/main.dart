import 'package:bmi_calc/ui/pages/home.dart';
import 'package:bmi_calc/ui/pages/result_page.dart';
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
      debugShowCheckedModeBanner: false,
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
          bodyText2: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
          ),
        ),
      ),
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/':
            return MaterialPageRoute(builder: (context) => const HomePage());

          case '/result':
            double resultBMI = settings.arguments as double;
            return MaterialPageRoute(
              builder: (context) => ResultPage(
                resultBMI: resultBMI.roundToDouble(),
              ),
            );
        }
      },
      home: const HomePage(),
    );
  }
}
