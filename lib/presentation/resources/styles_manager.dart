import 'package:flutter/material.dart';
import 'package:new_app/presentation/resources/fonts_manager.dart';

TextStyle _getTextStyle(Color color, double fontSize, FontWeight fontWeight) {
  return TextStyle(
    color: color,
    fontFamily: FontsConstants.fontFamily,
    fontSize: fontSize,
    fontWeight: fontWeight,
  );
}

TextStyle getRegularStyle({required Color color, double fontSize = 12}) {
  return _getTextStyle(color, fontSize, FontsWeightManager.regular);
}

TextStyle getLightStyle({required Color color, double fontSize = 12}) {
  return _getTextStyle(color, fontSize, FontsWeightManager.light);
}

TextStyle getMediumStyle({required Color color, double fontSize = 12}) {
  return _getTextStyle(color, fontSize, FontsWeightManager.medium);
}

TextStyle getSemiBoldStyle({required Color color, double fontSize = 12}) {
  return _getTextStyle(color, fontSize, FontsWeightManager.semiBold);
}

TextStyle getBoldStyle({required Color color, double fontSize = 12}) {
  return _getTextStyle(color, fontSize, FontsWeightManager.bold);
}
