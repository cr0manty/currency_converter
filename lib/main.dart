import 'dart:async';
import 'dart:developer';
import 'package:currency_converter/presentation/app.dart';
import 'package:currency_converter/src/bloc/observer.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> main() async {
  Bloc.observer = SimpleBlocObserver();
  await Hive.initFlutter();

  runZonedGuarded(
    () => runApp(const CurrencyConvertorApp()),
    (exception, stack) => log(
      exception.toString(),
      stackTrace: stack,
      time: DateTime.now(),
      name: 'Exception',
    ),
  );
}
