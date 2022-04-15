import 'package:flutter/material.dart';
import 'package:quran_app/Screens/Surats_Names/chapter_surats.dart';

import 'Screens/MainPage/landing_page.dart';
import 'surat_page.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(        
        primarySwatch: Colors.orange,
        fontFamily: 'arabic',
      ),
      home: const LandingPage(),
    );
  }
}