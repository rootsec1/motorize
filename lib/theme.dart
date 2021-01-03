import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final ThemeData lightAppTheme = ThemeData(
  primaryColor: Color(0xFF7541EE),
  visualDensity: VisualDensity.adaptivePlatformDensity,
  textTheme: TextTheme(
    headline1: GoogleFonts.montserrat(
      fontSize: 40,
      color: Colors.black,
    ),
    bodyText1: GoogleFonts.montserrat(
      fontSize: 18,
      color: Colors.grey[900],
    ),
    bodyText2: GoogleFonts.montserrat(fontSize: 16, color: Colors.grey[700]),
    button: GoogleFonts.montserrat(
      fontSize: 18,
      color: Colors.white,
    ),
  ),
);
