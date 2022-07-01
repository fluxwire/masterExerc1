import 'package:firstmockup/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static final tinderFont = GoogleFonts.getFont('Roboto');

  static ButtonStyle tinderStyle = OutlinedButton.styleFrom(
    minimumSize: const Size(88, 40),
    side: const BorderSide(
      color: AppColor.tinderText,
      style: BorderStyle.solid,
      width: 3,
    ),
    shape: const RoundedRectangleBorder(
      side: BorderSide(
        width: 3,
        color: AppColor.tinderText,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.all(
        Radius.circular(20),
      ),
    ),
  );

  static ButtonStyle flatButtonStyleBlue = TextButton.styleFrom(
    primary: AppColor.button,
    backgroundColor: AppColor.button,
    minimumSize: const Size(88, 50),
    padding: const EdgeInsets.symmetric(horizontal: 16.0),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(10.0)),
    ),
  );

  static ButtonStyle flatButtonStyleWhite = OutlinedButton.styleFrom(
    primary: AppColor.button,
    backgroundColor: AppColor.textWhite,
    minimumSize: const Size(88, 50),
    padding: const EdgeInsets.symmetric(horizontal: 16.0),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(10.0)),
    ),
  );
}
