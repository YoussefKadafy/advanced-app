import 'package:flutter/material.dart';
import 'package:new_app/presentation/resources/colors_manager.dart';
import 'package:new_app/presentation/resources/fonts_manager.dart';
import 'package:new_app/presentation/resources/styles_manager.dart';
import 'package:new_app/presentation/resources/values_manager.dart';

ThemeData getAppTheme() {
  return ThemeData(
    primaryColor: ColorManager.primary,
    primaryColorLight: ColorManager.lightPrimary,
    primaryColorDark: ColorManager.darkPrimary,
    splashColor: ColorManager.lightPrimary,
    disabledColor: ColorManager.grey1,
    cardTheme: CardTheme(
      color: ColorManager.white,
      elevation: AppSizes.s2,
      shadowColor: ColorManager.grey,
    ),
    appBarTheme: AppBarTheme(
      centerTitle: true,
      color: ColorManager.primary,
      shadowColor: ColorManager.lightPrimary,
      elevation: AppSizes.s2,
      titleTextStyle: getRegularStyle(
        color: ColorManager.white,
        fontSize: FontSize.s16,
      ),
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: ColorManager.primary,
      shape: StadiumBorder(),
      splashColor: ColorManager.lightPrimary,
      disabledColor: ColorManager.grey1,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: ColorManager.primary,
        elevation: AppSizes.s2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSizes.s12),
        ),
        textStyle: getRegularStyle(
          color: ColorManager.white,
          fontSize: FontSize.s17,
        ),
      ),
    ),
    textTheme: TextTheme(
      headlineLarge: getSemiBoldStyle(
        color: ColorManager.darkGrey,
        fontSize: FontSize.s22,
      ),
      headlineMedium: getMediumStyle(
        color: ColorManager.darkGrey,
        fontSize: AppMargins.m16,
      ),
      headlineSmall: getLightStyle(
        color: ColorManager.darkGrey,
        fontSize: FontSize.s14,
      ),
      bodyLarge: getRegularStyle(
        color: ColorManager.grey1,
        fontSize: FontSize.s14,
      ),
      titleMedium: getRegularStyle(
        color: ColorManager.grey1,
        fontSize: FontSize.s14,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.all(AppPaddings.p8),
      hintStyle: getRegularStyle(
        color: ColorManager.grey,
        fontSize: FontSize.s14,
      ),
      labelStyle: getMediumStyle(
        color: ColorManager.darkGrey,
        fontSize: FontSize.s14,
      ),
      errorStyle: getRegularStyle(
        color: ColorManager.error,
        fontSize: FontSize.s12,
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.grey),
        borderRadius: BorderRadius.circular(AppSizes.s8),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorManager.primary,
          width: AppSizes.s1_5,
        ),
        borderRadius: BorderRadius.circular(AppSizes.s8),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.error),
        borderRadius: BorderRadius.circular(AppSizes.s8),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorManager.primary,
          width: AppSizes.s1_5,
        ),
        borderRadius: BorderRadius.circular(AppSizes.s8),
      ),
    ),
  );
}
