import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/utils/string.dart';

ThemeData theme(BuildContext context) => ThemeData(
      scaffoldBackgroundColor: Colors.white,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      textTheme: TextTheme(
        bodyText1: const TextStyle(
          color: Colors.white,
          fontFamily: kFont,
          decoration: TextDecoration.none,
          fontStyle: FontStyle.normal,
          height: 1.5,
        ),
        bodyText2: const TextStyle(
          fontFamily: kFont,
          decoration: TextDecoration.none,
          fontStyle: FontStyle.normal,
        ),
        headline4: ThemeData.light().textTheme.headline4!.copyWith(
              fontWeight: FontWeight.bold,
              fontFamily: kFont,
              decoration: TextDecoration.none,
              fontStyle: FontStyle.normal,
            ),
      ),
      fontFamily: kFont,
      primaryColor: const Color(0xFFDAB161),
      backgroundColor: Colors.white,
      disabledColor: const Color.fromRGBO(74, 85, 104, 1),
      iconTheme: const IconThemeData(color: Color(0xFF0047CC)),
      primaryIconTheme: const IconThemeData(
        color: Color.fromARGB(5, 94, 131, 1),
      ),
      cardTheme: CardTheme(
        margin: const EdgeInsets.symmetric(vertical: 5),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        elevation: 5,
        color: const Color.fromRGBO(242, 242, 247, 1),
      ),
      dialogTheme: DialogTheme.of(context).copyWith(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      appBarTheme: AppBarTheme.of(context).copyWith(
        elevation: 0,
        iconTheme: const IconThemeData(color: Color.fromRGBO(3, 46, 198, 0)),
        backgroundColor: Colors.transparent,
      ),
      inputDecorationTheme: InputDecorationTheme(
        fillColor: const Color.fromRGBO(243, 243, 246, 1),
        filled: true,
        hintStyle: GoogleFonts.nunito(
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
        prefixIconColor: Colors.black,
        iconColor: Colors.black,
      ),
    );

CupertinoThemeData cupertinoTheme(BuildContext context) =>
    const CupertinoThemeData(
      brightness: Brightness.light,
      primaryColor: Colors.black,
      barBackgroundColor: Colors.black,
      textTheme: CupertinoTextThemeData(
        textStyle: TextStyle(fontFamily: kFont),
        navTitleTextStyle: TextStyle(fontFamily: kFont),
      ),
    );
