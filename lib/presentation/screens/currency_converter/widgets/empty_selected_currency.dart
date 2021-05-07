import 'package:currency_converter/presentation/widgets/animated_opacity_tap.dart';
import 'package:currency_converter/src/bloc/converter/converter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';
import 'package:currency_converter/utils/extensions/theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@immutable
class EmptySelectedCurrency extends StatelessWidget {
  const EmptySelectedCurrency({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => SliverFillRemaining(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'No Data',
              style: context.textTheme.caption,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: AnimatedOpacityTap(
                onPressed: () {
                  context.read<ConverterBLoC>().add(
                        const ConverterEvent.fetch(),
                      );
                },
                builder: (context, _) => Text(
                  'Update',
                  style: context.textTheme.bodyText1!.copyWith(
                    fontSize: 18,
                    foreground: Paint()..shader = context.theme.textGradient,
                  ),
                ),
              ),
            )
          ],
        ),
      );

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) =>
      super.debugFillProperties(
        properties
          ..add(
            StringProperty(
              'description',
              'EmptySelectedCurrency StatelessWidget',
            ),
          ),
      );
}
