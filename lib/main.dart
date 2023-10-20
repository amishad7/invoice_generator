import 'package:flutter/material.dart';
import 'package:invoice_generator/Screens/first_page.dart';
import 'package:invoice_generator/Screens/secondPage.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(useMaterial3: true),
      themeMode: ThemeMode.dark,
      routes: {
        '/': (context) => const HomePage(),
        'two': (context) => const Info_Page(),
      },
    ),
  );
}
