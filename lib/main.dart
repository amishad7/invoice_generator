import 'package:flutter/material.dart';
import 'package:invoice_generator/Screens/Preview.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(useMaterial3: true),
      themeMode: ThemeMode.dark,
      routes: {
        //  '/': (context) => const HomePage(),
        //   'two': (context) => const Info_Page(),
        //   'three': (context) => const CartPage(),
        //   'fourth': (context) => const InvoicePage_(),
        '/': (context) => const PDF_View(),
      },
    ),
  );
}
