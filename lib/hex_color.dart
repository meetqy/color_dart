import 'package:flutter/material.dart';

class _HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    hexColor = hexColor.replaceAll('0X', '');
    if (hexColor.length == 3) {
      hexColor += hexColor;
    }
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  _HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}

/// hex
/// ```
/// hex('#000')
/// or
/// hex('#ff0000')
/// ```
Color hex(String hexColor) {
  return _HexColor(hexColor);
}
