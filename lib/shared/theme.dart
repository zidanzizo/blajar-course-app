import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const double defaultMargin = 24.0;

Color primaryColor = const Color(0xFF640EF1);
Color bodyBackgroundColor = const Color(0xFF05051E);
Color backgroundColor = const Color(0xFF15162F);
Color redColor = const Color(0xFFFF2929);
Color greyColor = const Color(0xFF61647D);
Color whiteColor = const Color(0xFFFFFFFF);
Color orangeColor = const Color(0xFFFF9F69);
Color greenColor = const Color(0xFF2AB55A);

FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.w700;
FontWeight extraBold = FontWeight.w800;
FontWeight black = FontWeight.w900;

// font family (use this if user medium, semiBold, extrabold, black)
String? mediumText = GoogleFonts.poppins(fontWeight: medium).fontFamily;
String? semiBoldText = GoogleFonts.poppins(fontWeight: semiBold).fontFamily;
String? extraBoldText = GoogleFonts.poppins(fontWeight: extraBold).fontFamily;
String? blackText = GoogleFonts.poppins(fontWeight: black).fontFamily;

TextStyle whiteTextStyle = TextStyle(
  color: whiteColor,
);

TextStyle purpleTextStyle = TextStyle(
  color: primaryColor,
);

TextStyle greyTextStyle = TextStyle(
  color: greyColor,
);
