import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppTheme {
  final ThemeData _theme;

  ThemeData get theme => _theme;

  factory AppTheme() => AppTheme.dark();

  AppTheme.dark()
      : _theme = ThemeData(
          brightness: Brightness.dark,
          fontFamily: 'Nunito',
          scaffoldBackgroundColor: const Color(0xFF383160),
          textTheme: const TextTheme(
            caption: TextStyle(
              fontFamily: 'Nunito',
              fontSize: 22,
              color: Colors.white,
            ),
            subtitle1: TextStyle(
              fontFamily: 'Nunito',
              fontSize: 14,
              color: Color(0xFF40386B),
            ),
            bodyText1: TextStyle(
              fontFamily: 'Nunito',
              fontSize: 14,
              color: Color(0xFFAEACE6),
            ),
          ),
          buttonTheme: const ButtonThemeData(
            splashColor: Color(0xFF40386B),
            hoverColor: Color(0xFF40386B),
          ),
          buttonColor: const Color(0xFF40386B),
          indicatorColor: Colors.white,
          cupertinoOverrideTheme: const CupertinoThemeData(
            brightness: Brightness.dark,
            textTheme: CupertinoTextThemeData(
              textStyle: TextStyle(
                fontFamily: 'Nunito',
                fontSize: 14,
                color: Colors.white,
              ),
              navLargeTitleTextStyle: TextStyle(
                fontFamily: 'Nunito',
                fontSize: 34,
                fontWeight: FontWeight.w700,
                letterSpacing: 0.41,
                color: Colors.white,
              ),
              navTitleTextStyle: TextStyle(
                fontFamily: 'Nunito',
                fontSize: 17,
                fontWeight: FontWeight.w600,
                letterSpacing: -0.41,
                color: Colors.white,
              ),
              actionTextStyle: TextStyle(
                fontFamily: 'Nunito',
                fontSize: 14,
                color: Colors.white,
              ),
              tabLabelTextStyle: TextStyle(
                fontFamily: 'Nunito',
                fontSize: 14,
                color: Color(0xFF23DB8D),
              ),
              navActionTextStyle: TextStyle(
                fontFamily: 'Nunito',
                fontSize: 14,
                color: Colors.white,
              ),
              pickerTextStyle: TextStyle(
                fontFamily: 'Nunito',
                fontSize: 14,
                color: Colors.white,
              ),
              dateTimePickerTextStyle: TextStyle(
                fontSize: 20,
                fontFamily: 'Nunito',
                color: Colors.white,
              ),
            ),
          ),
        );

  AppTheme.light() : _theme = ThemeData.light();
}
