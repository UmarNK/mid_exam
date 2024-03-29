


import 'package:flutter/material.dart';
import 'package:lab_mid/resources/styles_manager.dart';
import 'package:lab_mid/resources/values_manager.dart';

import 'color_manager.dart';
import 'fonts_manager.dart';

ThemeData getApplicationTheme(){

  return ThemeData(


    scaffoldBackgroundColor: ColorManager.white,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(

      backgroundColor: ColorManager.white, // Set the background color to white
    ),
    // main colors of the theme
    primaryColor: ColorManager.primary,
    primaryColorLight: ColorManager.primaryOpacity70,
    primaryColorDark: ColorManager.darkPrimary,
    disabledColor: ColorManager.grey1, // incase of disabled button
    colorScheme: ColorScheme.fromSwatch().copyWith(secondary: ColorManager.grey), // accent color
    splashColor: ColorManager.primaryOpacity70, // ripple color

    // card view theme
    cardTheme: CardTheme(
      color: ColorManager.white,
      shadowColor: ColorManager.grey,
      elevation: AppSize.size4,
    ),

    // AppBar theme
    appBarTheme: AppBarTheme(
      centerTitle: true,
      color: ColorManager.primary,
      elevation: AppSize.size4,
      shadowColor: ColorManager.primaryOpacity70,
      titleTextStyle: getRegularStyle(color: ColorManager.white, fontSize: FontSize.size16),
    ),

    // Button theme
    buttonTheme: ButtonThemeData(
      shape: const StadiumBorder(),
      disabledColor: ColorManager.grey,
      buttonColor: ColorManager.primary,
      splashColor: ColorManager.primaryOpacity70,
      textTheme: ButtonTextTheme.primary,
    ),

    // Elevated Button Theme
    elevatedButtonTheme: ElevatedButtonThemeData(

      style: ElevatedButton.styleFrom(
        textStyle: getRegularStyle(color: ColorManager.white),
        backgroundColor: ColorManager.primary, // primary
        foregroundColor: ColorManager.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppSize.size12),),
      ),

    ),

    // text theme
    textTheme: TextTheme(
      displayLarge: getSemiBoldStyle(color: ColorManager.darkGrey, fontSize: FontSize.size16),
      titleMedium: getMediumStyle(color: ColorManager.lightGrey, fontSize: FontSize.size14,),
      titleSmall: getMediumStyle(color: ColorManager.primary, fontSize: FontSize.size12,),
      displaySmall: getRegularStyle(color: ColorManager.primary, fontSize: FontSize.size16),
      bodySmall: getRegularStyle(color: ColorManager.grey1,),
      bodyLarge: getRegularStyle(color: ColorManager.grey,),
    ),

    // input decoration theme (text form field)
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.all(AppPadding.padding8,),
      // hint style
      hintStyle: getRegularStyle(color: ColorManager.grey1,),

      // label style
      labelStyle: getRegularStyle(color: ColorManager.darkGrey,),
      
      errorStyle: getRegularStyle(color: ColorManager.error,),

      // enabled border
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.grey, width: AppSize.size1_5),
        borderRadius: BorderRadius.circular(AppSize.size8,),
      ),

      // focused border
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorManager.primary, 
          width: AppSize.size1_5,
        ),
        borderRadius: BorderRadius.circular(AppSize.size8,),
      ),

      // error border
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorManager.error,
          width: AppSize.size1_5,
        ),
        borderRadius: BorderRadius.circular(AppSize.size8,),
      ),

      // focused error border
      focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorManager.primary,
          width: AppSize.size1_5,
        ),
        borderRadius: BorderRadius.circular(AppSize.size8,),
      ),
    ),



  );
}

ThemeData getApplicationDarkTheme(){

  return ThemeData(


    scaffoldBackgroundColor: ColorManager.black,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(

      backgroundColor: ColorManager.black, // Set the background color to white
    ),
    // main colors of the theme
    primaryColor: ColorManager.darkPrimary,
    primaryColorLight: ColorManager.primaryOpacity70,
    primaryColorDark: ColorManager.darkPrimary,
    disabledColor: ColorManager.grey1, // incase of disabled button
    colorScheme: ColorScheme.fromSwatch().copyWith(secondary: ColorManager.grey), // accent color
    splashColor: ColorManager.primaryOpacity70, // ripple color

    // card view theme
    cardTheme: CardTheme(
      color: ColorManager.black,
      shadowColor: ColorManager.grey,
      elevation: AppSize.size4,
    ),

    // AppBar theme
    appBarTheme: AppBarTheme(
      centerTitle: true,
      color: ColorManager.darkPrimary,
      elevation: AppSize.size4,
      shadowColor: ColorManager.primaryOpacity70,
      titleTextStyle: getRegularStyle(color: ColorManager.black, fontSize: FontSize.size16),
    ),

    // Button theme
    buttonTheme: ButtonThemeData(
      shape: const StadiumBorder(),
      disabledColor: ColorManager.grey,
      buttonColor: ColorManager.darkPrimary,
      splashColor: ColorManager.primaryOpacity70,
      textTheme: ButtonTextTheme.primary,
    ),

    // Elevated Button Theme
    elevatedButtonTheme: ElevatedButtonThemeData(

      style: ElevatedButton.styleFrom(
        textStyle: getRegularStyle(color: ColorManager.white),
        backgroundColor: ColorManager.darkPrimary, // primary
        foregroundColor: ColorManager.black,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppSize.size12),),
      ),

    ),

    // text theme
    textTheme: TextTheme(
      displayLarge: getSemiBoldStyle(color: ColorManager.darkGrey, fontSize: FontSize.size16),
      titleMedium: getMediumStyle(color: ColorManager.lightGrey, fontSize: FontSize.size14,),
      titleSmall: getMediumStyle(color: ColorManager.primary, fontSize: FontSize.size12,),
      displaySmall: getRegularStyle(color: ColorManager.primary, fontSize: FontSize.size16),
      bodySmall: getRegularStyle(color: ColorManager.grey1,),
      bodyLarge: getRegularStyle(color: ColorManager.grey,),
    ),

    // input decoration theme (text form field)
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.all(AppPadding.padding8,),
      // hint style
      hintStyle: getRegularStyle(color: ColorManager.grey1,),

      // label style
      labelStyle: getRegularStyle(color: ColorManager.darkGrey,),

      errorStyle: getRegularStyle(color: ColorManager.error,),

      // enabled border
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.grey, width: AppSize.size1_5),
        borderRadius: BorderRadius.circular(AppSize.size8,),
      ),

      // focused border
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorManager.darkPrimary,
          width: AppSize.size1_5,
        ),
        borderRadius: BorderRadius.circular(AppSize.size8,),
      ),

      // error border
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorManager.error,
          width: AppSize.size1_5,
        ),
        borderRadius: BorderRadius.circular(AppSize.size8,),
      ),

      // focused error border
      focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorManager.darkPrimary,
          width: AppSize.size1_5,
        ),
        borderRadius: BorderRadius.circular(AppSize.size8,),
      ),
    ),



  );
}