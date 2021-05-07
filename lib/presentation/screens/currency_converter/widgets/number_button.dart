import 'package:currency_converter/presentation/widgets/animated_opacity_tap.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';
import 'package:currency_converter/utils/extensions/theme.dart';

@immutable
class NumberButton extends StatelessWidget {
  final String value;
  final VoidCallback? onPressed;

  const NumberButton({
    required this.value,
    this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => AnimatedOpacityTap(
        onPressed: onPressed,
        builder: (context, _) => DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: context.theme.borderRadius,
            color: context.theme.buttonColor,
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: FittedBox(
              child: Text(
                value.toString(),
                style: context.textTheme.bodyText1,
              ),
            ),
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
              'NumberButton StatelessWidget',
            ),
          ),
      );
}
