import 'dart:ui';

import 'package:currency_converter/presentation/navigators/initial_navigator.dart';
import 'package:flash/flash.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';
import 'package:currency_converter/utils/extensions/theme.dart';

@immutable
class Toast extends StatelessWidget {
  final FlashController controller;
  final String text;

  const Toast({
    required this.text,
    required this.controller,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Flash<void>.bar(
        onTap: controller.dismiss,
        backgroundColor: Colors.transparent,
        margin: const EdgeInsets.only(bottom: 50),
        controller: controller,
        borderRadius: context.theme.borderRadius,
        child: ClipPath.shape(
          shape: RoundedRectangleBorder(
            borderRadius: context.theme.borderRadius,
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: const Color(0x7F000000),
                borderRadius: context.theme.borderRadius,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 8,
                  horizontal: 30,
                ),
                child: Text(
                  text,
                  textAlign: TextAlign.center,
                  style: context.textTheme.bodyText2!.copyWith(
                    color: context.theme.lightColor,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) =>
      super.debugFillProperties(
        properties
          ..add(
            StringProperty(
              'description',
              'Toast StatelessWidget',
            ),
          ),
      );
}

extension ToastExtension on BuildContext {
  FlashController? showToast(
    String text, {
    Duration duration = const Duration(
      seconds: 3,
    ),
  }) =>
      InitialNavigator.of(this)?.showToast(
        text,
        duration: duration,
      );
}
