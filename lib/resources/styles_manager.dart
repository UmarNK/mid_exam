import 'package:flutter/material.dart';

import 'fonts_manager.dart';

TextStyle _getTextStyle(double fontSize, String fontFamily,
    FontWeight fontWeight, Color color, TextDecoration? textDecoration) {
  return TextStyle(
      fontSize: fontSize,
      fontFamily: fontFamily,
      fontWeight: fontWeight,
      color: color,
      decoration: textDecoration,
  decorationColor: color,
    decorationThickness: 1.5,
  );
}

// Regular Style
TextStyle getRegularStyle(
    {double fontSize = FontSize.size12,
    required Color color,
    String fontFamily = FontConstants.fontFamily,
    TextDecoration? textDecoration = TextDecoration.none}) {
  return _getTextStyle(
      fontSize, fontFamily, FontWeightManager.regular, color, textDecoration);
}

// Light Style
TextStyle getLightStyle(
    {double fontSize = FontSize.size12,
    required Color color,
    String fontFamily = FontConstants.fontFamily,
    TextDecoration? textDecoration = TextDecoration.none}) {
  return _getTextStyle(
      fontSize, fontFamily, FontWeightManager.light, color, textDecoration);
}

// <Medium> Style
TextStyle getMediumStyle(
    {double fontSize = FontSize.size12,
    required Color color,
    String fontFamily = FontConstants.fontFamily,
    TextDecoration? textDecoration = TextDecoration.none}) {
  return _getTextStyle(
      fontSize, fontFamily, FontWeightManager.medium, color, textDecoration);
}

// Bold Style
TextStyle getBoldStyle(
    {double fontSize = FontSize.size12,
    required Color color,
    String fontFamily = FontConstants.fontFamily,
    TextDecoration? textDecoration = TextDecoration.none}) {
  return _getTextStyle(
      fontSize, fontFamily, FontWeightManager.bold, color, textDecoration);
}

// SemiBold Style
TextStyle getSemiBoldStyle(
    {double fontSize = FontSize.size12,
    required Color color,
    String fontFamily = FontConstants.fontFamily,
    TextDecoration? textDecoration = TextDecoration.none}) {
  return _getTextStyle(
      fontSize, fontFamily, FontWeightManager.semiBold, color, textDecoration);
}
