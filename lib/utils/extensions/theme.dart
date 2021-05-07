import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

extension ThemeDataExtension on ThemeData {
  bool get isDark => brightness == Brightness.dark;

  bool get isLight => brightness == Brightness.light;

  TextStyle get outlineButtonStyle => textTheme.subtitle2!.copyWith(
        color: primaryColor,
      );

  TextStyle get cupertinoPickerStyle => const TextStyle(
        inherit: false,
        fontSize: 20.0,
        fontWeight: FontWeight.w400,
        textBaseline: TextBaseline.alphabetic,
        color: CupertinoColors.systemBlue,
      );

  TextStyle get pageCaption => TextStyle(
        fontFamily: 'Nunito',
        fontSize: 34,
        fontWeight: FontWeight.w700,
        letterSpacing: 0.41,
        color: iconTheme.color,
      );

  TextStyle get toastText => textTheme.bodyText2!.copyWith(
        color: lightColor,
      );

  Color get lightColor => Colors.white;

  Color get successColor => const Color(0xFF23DB8D);

  Color get disconnectedColor => errorColor;

  Color get connectingColor => const Color(0xFFFFD369);

  Color get discountStripColor => const Color(0xFFE56353);

  BorderRadius get borderRadius => BorderRadius.circular(8);

  Shader get textGradient => const LinearGradient(
        colors: [
          Color(0xFF1D5AE0),
          Color(0xff348bd4),
        ],
      ).createShader(
        const Rect.fromLTWH(
          0.0,
          0.0,
          200.0,
          70.0,
        ),
      );
}

extension ThemeContext on BuildContext {
  ThemeData get theme => Theme.of(this);

  TextTheme get textTheme => theme.textTheme;
}
