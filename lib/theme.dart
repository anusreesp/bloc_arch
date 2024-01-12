import 'package:flutter/material.dart';

const montserrat = "Montserrat";

class AppTheme {
  static TextTheme darkTextTheme = const TextTheme();

  static ThemeData light() {
    return ThemeData(
      progressIndicatorTheme:
          const ProgressIndicatorThemeData(color: AppTheme.greenColor),
      brightness: Brightness.light,
      scaffoldBackgroundColor: whiteColor,
      fontFamily: montserrat,
      primaryColor: blueColor,
      appBarTheme: const AppBarTheme(
        backgroundColor: blueColor,
        elevation: 0,
        titleTextStyle: mon14White500,
      ),
      inputDecorationTheme:
          const InputDecorationTheme(hintStyle: mon12lightGrey3),
      radioTheme: const RadioThemeData(
        fillColor: MaterialStatePropertyAll(greenColor),
      ),
      buttonTheme: const ButtonThemeData(
        buttonColor: greenColor,
      ),
      checkboxTheme: CheckboxThemeData(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
        side: MaterialStateBorderSide.resolveWith(
            (states) => const BorderSide(color: lightGreen2Color)),
      ),
      bottomSheetTheme: const BottomSheetThemeData(
        backgroundColor: whiteColor,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16), topRight: Radius.circular(16))),
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: white2Color,
      ),
    );
  }

  static ThemeData dark() {
    return ThemeData(
      progressIndicatorTheme:
          const ProgressIndicatorThemeData(color: AppTheme.greenColor),
      brightness: Brightness.dark,
      scaffoldBackgroundColor: blackColor,
      fontFamily: montserrat,
      primaryColor: lightGrey1Color,
      appBarTheme: const AppBarTheme(
        backgroundColor: blueColor,
        elevation: 0,
        titleTextStyle: mon14White500,
      ),
      inputDecorationTheme:
          const InputDecorationTheme(hintStyle: mon12lightGrey3),
      radioTheme: const RadioThemeData(
        fillColor: MaterialStatePropertyAll(greenColor),
      ),
      buttonTheme: const ButtonThemeData(
        buttonColor: greenColor,
      ),
      checkboxTheme: CheckboxThemeData(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
        side: MaterialStateBorderSide.resolveWith(
            (states) => const BorderSide(color: lightGreen2Color)),
      ),
      bottomSheetTheme: const BottomSheetThemeData(
        backgroundColor: whiteColor,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16), topRight: Radius.circular(16))),
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: white2Color,
      ),
    );
  }

  //White
  static const whiteColor = Color(0xffffffff);
  static const white1Color = Color(0xfff8f8fB);
  static const white2Color = Color(0xFFFCFCFC);

  //blue
  static const blueColor = Color(0xff0074bf);
  static const lightBlue1Color = Color(0xfff2f8fc);
  static const lightBlue2Color = Color(0xFFB7E1FD);
  static const lightBlue3Color = Color(0xFFEBF4FA);

  //light grey
  static const lightGrey1Color = Color.fromARGB(255, 214, 214, 214);
  static const lightGrey4Color = Color(0xFFEFEEF1);
  static const lightGrey2Color = Color(0xFFC2C0C0);
  static const lightGrey3Color = Color(0xff8b7c7c);

  //dark grey
  static const darkGrey1Color = Color(0xFF737070);
  static const darkGrey2Color = Color(0xFF616269);
  static const darkGrey3Color = Color(0xFF707070);

  //black
  static const black1Color = Color(0xff110101);
  static const blackColor = Color(0xff000000);

  //green
  static const brightGreenColor = Color(0xFF2B9927);

  //light green
  static const greenColor = Color(0xff26a57e);
  static const lightGreen1Color = Color(0xFFE3F8F3);
  static const lightGreen2Color = Color(0xFF7FF6D1);

  //Red Color
  static const redColor = Color(0xFFFF6060);
}

const TextStyle mon14White500 = TextStyle(
  fontFamily: montserrat,
  fontSize: 14,
  color: AppTheme.whiteColor,
  fontWeight: FontWeight.w500,
);
const TextStyle mon12lightGrey3 = TextStyle(
  fontFamily: montserrat,
  fontSize: 12,
  fontWeight: FontWeight.w500,
  color: AppTheme.lightGrey3Color,
);
