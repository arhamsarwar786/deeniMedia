import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quran_app/Provider/main_provider.dart';
import 'package:quran_app/Screens/MainPage/main_screen.dart';
import 'package:quran_app/Screens/Surats_Names/chapter_surats.dart';

import 'Screens/MainPage/landing_page.dart';
import 'Screens/alQuran/Surats/surat_view.dart';
import 'surat_page.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {  

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(      
      create: (BuildContext context) => MyProvider(),
      child: MaterialApp(
        theme: ThemeData(        
          colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: Color(0xff002E33),
          ),
          // primarySwatch: ,
          fontFamily: 'arabic',
        ),
        home:  MainScreen(),
      ),
    );
  }
}