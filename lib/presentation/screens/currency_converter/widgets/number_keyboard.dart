import 'package:currency_converter/presentation/screens/currency_converter/widgets/number_button.dart';
import 'package:currency_converter/src/bloc/converter/converter.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@immutable
class NumberKeyboard extends StatelessWidget {
  static const List<String> _buttonsValues = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '.',
    '0',
    'C'
  ];

  const NumberKeyboard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => GridView.count(
        padding: const EdgeInsets.only(top: 10),
        physics: const NeverScrollableScrollPhysics(),
        crossAxisCount: 3,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        childAspectRatio: 4 / 2.5,
        children: List.generate(
          _buttonsValues.length,
          (index) => NumberButton(
            value: _buttonsValues[index],
            onPressed: () {
              context.read<ConverterBLoC>().add(
                    ConverterEvent.changeValue(_buttonsValues[index]),
                  );
            },
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
              'NumberKeyboard StatelessWidget',
            ),
          ),
      );
}
