import 'package:flutter/gestures.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';
import 'package:currency_converter/utils/extensions/theme.dart';

@immutable
class CurrencyRow extends StatelessWidget {
  final String currency;
  final String value;

  const CurrencyRow({
    required this.value,
    required this.currency,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 18,
          horizontal: 32,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              currency,
              style: context.textTheme.bodyText1!.copyWith(fontSize: 20),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Text(
                  value,
                  style: context.textTheme.bodyText2!.copyWith(fontSize: 22),
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
              'CurrencyRow StatelessWidget',
            ),
          ),
      );
}

@immutable
class SelectedCurrencyRow extends StatelessWidget {
  final String currency;
  final String value;

  const SelectedCurrencyRow({
    required this.value,
    required this.currency,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: context.theme.borderRadius,
          color: context.theme.buttonColor,
        ),
        child: CurrencyRow(
          currency: currency,
          value: value,
        ),
      );

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) =>
      super.debugFillProperties(
        properties
          ..add(
            StringProperty(
              'description',
              'SelectedCurrencyRow StatelessWidget',
            ),
          ),
      );
}
