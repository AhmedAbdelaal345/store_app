import 'package:flutter/material.dart';
import 'package:store_app/screens/home_page.dart';
import 'package:store_app/screens/update_product_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xffFFFFFF),
        colorScheme: ColorScheme.light(),
      ),
      routes: {
        HomePage.id: (context) => HomePage(),
        UpdateProduct.id: (context) => UpdateProduct(),
      },
      home: HomePage(),
    );
  }
}
