import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final appTheme = ThemeData(
  // fontFamily: 'Poppins',
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: Colors.black,
    selectedItemColor: Colors.white,
    unselectedItemColor: Colors.grey,
  ),
  dividerColor: Color.fromRGBO(255, 255, 255, 0.07),
  textTheme: GoogleFonts.interTextTheme().merge(_textTheme),
);

final _textTheme = TextTheme(
  labelMedium: TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: Colors.white),
  labelSmall: TextStyle(fontSize: 10, fontWeight: FontWeight.w800, color: Colors.white),
  bodyMedium: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.white),
  bodySmall: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Colors.white),
);
