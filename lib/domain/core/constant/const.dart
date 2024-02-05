import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stock_scan_parser_application/domain/core/color/colors.dart';

double sHeight = 0.0;
double sWidth = 0.0;

void sizeFinder(BuildContext context) {
  final size = MediaQuery.of(context).size;
  sHeight = size.height;
  sWidth = size.width;
}

const kHeight5 = SizedBox(
  height: 5,
);
const kHeight10 = SizedBox(
  height: 10,
);
const kHeight25 = SizedBox(
  height: 25,
);
const kWidth10 = SizedBox(
  width: 10,
);
const kWidth100 = SizedBox(
  width: 100,
);

class ErrorMsg {
  String message;
  ErrorMsg({required this.message});
}

const String errorMsg = 'Something went wrong, please try again';
TextStyle kronaOne(
    {double fontSize = 0.035,
    FontWeight fontWeight = FontWeight.normal,
    Color color = kBlack}) {
  return GoogleFonts.kronaOne(
      fontSize: fontSize * sWidth, fontWeight: fontWeight, color: color);
}

TextStyle textStyle = GoogleFonts.songMyung(
  color: kWhite,
  fontWeight: FontWeight.w500,
  fontSize: sWidth * 0.045,
);
TextStyle replaceValueStyle = GoogleFonts.songMyung(
  color: kBlue,
  fontWeight: FontWeight.w500,
  decoration: TextDecoration.underline,
  decorationColor: kBlue,
  decorationThickness: 1,
  fontSize: sWidth * 0.045,
);
TextStyle defaultTypeStyle = GoogleFonts.songMyung(
  color: kWhite,
  fontWeight: FontWeight.bold,
  fontSize: sWidth * 0.045,
);
TextStyle replaceValueClickedStyle = GoogleFonts.songMyung(
  color: kRed, // Change this to the desired color when clicked
  fontWeight: FontWeight.w500,
  decoration: TextDecoration.underline,
  decorationColor: kPurple, // Change this to the desired decoration color when clicked
  decorationThickness: 1,
  fontSize: sWidth * 0.045,
);
TextStyle replaceValueAfterClickStyle = replaceValueClickedStyle.copyWith(
  color: kPurple, // Change color to purple
);