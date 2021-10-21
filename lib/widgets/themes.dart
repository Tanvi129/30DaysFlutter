import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.purple,
      fontFamily: GoogleFonts.lato().fontFamily,
      appBarTheme: AppBarTheme(
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.grey,
        ),
      ));

  static ThemeData darkTheme(BuildContext context) => ThemeData(
        primarySwatch: Colors.amber,
      );

      //Colors
  static Color creamColor = Color(0xfff5f5f5);
  static Color darkBluishColor = Color(0xff403b58);
}
