import 'package:flutter/material.dart';
import 'package:quotes_app/views/detail_page/detail_page.dart';
import 'package:quotes_app/views/home_page/home_page.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.red.shade50,

        //System font change
        // fontFamily: "NekroOne",
      ),
      routes: {
        '/': (context) => const HomePage(),
        'detail_page': (context) => DetailPage(),
      },
    );
  }
}
