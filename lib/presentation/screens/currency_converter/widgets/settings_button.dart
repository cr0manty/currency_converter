import 'package:currency_converter/presentation/widgets/animated_opacity_tap.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';
import 'package:currency_converter/utils/extensions/theme.dart';

@immutable
class SettingsButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const SettingsButton({
    this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => AnimatedOpacityTap(
        onPressed: onPressed,
        builder: (context, _) => Padding(
          padding: const EdgeInsets.all(8),
          child: Icon(
            Icons.settings,
            size: 30,
            color: context.theme.indicatorColor,
          ),
        ),
      );

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) =>
      super.debugFillProperties(
        properties
          ..add(
            StringProperty(
              'description',
              'SettingsButton StatelessWidget',
            ),
          ),
      );
}
