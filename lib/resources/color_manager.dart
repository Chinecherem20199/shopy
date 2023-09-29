import 'package:flutter/material.dart';

class ColorManager {
  static Color primary = HexColor.fromHex("#9832BC");
  static Color secondary = HexColor.fromHex("#C4C4C4");
  static Color white = HexColor.fromHex("#ffffff");
  static Color black = HexColor.fromHex("#000000");
  static Color black2 = HexColor.fromHex("#242121");
  static Color buttonBlack = HexColor.fromHex("#2F2C2C");
  static Color grayLight = HexColor.fromHex("#BBACAC");

  // static Color info = HexColor.fromHex("#2F80ED");
}

extension HexColor on Color {
  static Color fromHex(String hexColorString) {
    hexColorString = hexColorString.replaceAll('#', '');
    if (hexColorString.length == 6) {
      hexColorString = 'FF$hexColorString'; // 8 character with opacity 100%
    }
    return Color(
      int.parse(
        hexColorString,
        radix: 16,
      ),
    );
  }
}

class FontConstant {
  static const String fontFamilyPoppins = "Poppins";
}

class FontWeightManager {
  static const FontWeight light = FontWeight.w300;
  static const FontWeight regular = FontWeight.w400;
  static const FontWeight medium = FontWeight.w500;
  static const FontWeight semiBold = FontWeight.w600;
  static const FontWeight bold = FontWeight.w700;
  static const FontWeight extraBold = FontWeight.w800;
}
