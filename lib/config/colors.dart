import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppColors {
  static Color primaryWhite = Color(0xFFCADCED);
  
  // static Color primaryWhite = Colors.indigo[100];
  static EdgeInsets navPading = EdgeInsets.fromLTRB(70.0, 10, 70, 10);
  static EdgeInsets addFundPading = EdgeInsets.fromLTRB(40.0, 10, 70, 0);
  static EdgeInsets addRulePading = EdgeInsets.fromLTRB(40.0, 20, 280, 10);
  static EdgeInsets navPadingDivider = EdgeInsets.fromLTRB(70.0, 25, 70, 25);
  static EdgeInsets addFundPadingDivider = EdgeInsets.fromLTRB(40.0, 10, 40, 0);
  // static EdgeInsets navPading2 = EdgeInsets.fromLTRB(10.0, 60, 70, 10);
  static List pieColors = [
    Colors.indigo[400],
    Colors.blue,
    Colors.green,
    Colors.amber,
    Colors.deepOrange,
    Colors.brown,
  ];
  static TextStyle kFontNavStyle = GoogleFonts.getFont('Roboto Mono',color: Colors.white, fontWeight: FontWeight.w600, fontSize: 17);
  static TextStyle kFontStyle = GoogleFonts.getFont('Roboto Mono',color: Colors.white, fontWeight: FontWeight.w200, fontSize: 17);
  static TextStyle kAddFundSubFontStyle = GoogleFonts.getFont('Roboto Mono',color: Colors.white, fontWeight: FontWeight.w200, fontSize: 12);
  static TextStyle kAddFundFontStyle = GoogleFonts.getFont('Merriweather',color: Colors.white, fontWeight: FontWeight.w300, fontSize: 15);
  static TextStyle kFontDollarStyle = GoogleFonts.getFont('Poppins',
      color: Colors.white, fontWeight: FontWeight.w200, fontSize: 17);
  static TextStyle kFontBalanceStyle = GoogleFonts.getFont('Roboto Mono',
      color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25);
  static TextStyle kFontSeparatortyle = GoogleFonts.getFont('Roboto Mono',
      color: Colors.blueGrey, fontWeight: FontWeight.bold, fontSize: 50);
  static TextStyle kFontBalanceFigStyle = GoogleFonts.getFont('Merriweather',
      color: Colors.white, fontWeight: FontWeight.w100, fontSize: 45);
  static TextStyle kFontAccountFigStyle = GoogleFonts.getFont('Merriweather',
      color: Colors.white, fontWeight: FontWeight.w100, fontSize: 25);
  static List<Color> gradienColors = [
    Colors.indigo[400],
    Colors.indigo[900],
    Colors.purple[900],
    Colors.purple[600],
  ];
  static List<Color> gradienAppBarColors = [
    Colors.indigo[900],
    Colors.purple[900],
  ];
  static List<Color> gradienBalanceContainerColors = [
    Colors.indigo[400],
    Colors.indigo[900],
    Colors.purple[900],
  ];
  static List<Color> gradienAccountContainerColors = [
    Colors.indigo[400],
    Colors.indigo[900],
    Colors.purple[900],
    Colors.purple[600],
  ];
  static List<Color> gradienBalanceContainerLineGraphColors = [
    Colors.indigo[400],
    Colors.indigo[900],
    Colors.purple[900],
  ];
  static List<BoxShadow> neumorpShadow = [
    BoxShadow(
        color: Colors.white.withOpacity(0.5),
        spreadRadius: -5,
        offset: Offset(-5, -5),
        blurRadius: 30),
    BoxShadow(
        color: Colors.blue[900].withOpacity(.2),
        spreadRadius: 2,
        offset: Offset(7, 7),
        blurRadius: 20)
  ];

  static BoxDecoration kBoxDecorations = BoxDecoration(
    boxShadow: AppColors.neumorpShadow,
    gradient: LinearGradient(
      colors: AppColors.gradienBalanceContainerColors,
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
    borderRadius: BorderRadius.circular(22),
  );
}
