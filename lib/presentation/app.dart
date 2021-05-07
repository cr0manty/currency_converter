import 'package:currency_converter/presentation/navigators/initial_navigator.dart';
import 'package:currency_converter/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

@immutable
class CurrencyConvertorApp extends StatelessWidget {
  const CurrencyConvertorApp({
    Key? key,
  }) : super(key: key);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) =>
      super.debugFillProperties(
        properties
          ..add(
            StringProperty(
              'description',
              'CurrencyConvertorApp StatelessWidget',
            ),
          ),
      );

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        darkTheme: AppTheme.dark().theme,
        theme: AppTheme.light().theme,
        themeMode: ThemeMode.dark,
        home: InitialNavigator.page(),
      );
}
