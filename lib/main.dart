import 'package:currencyapp/currencyapp.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main(){

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CurrencyApp(),
    );
  }
}

