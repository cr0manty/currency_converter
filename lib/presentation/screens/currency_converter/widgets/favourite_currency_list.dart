import 'package:currency_converter/models/currency.dart';
import 'package:currency_converter/presentation/screens/currency_converter/widgets/currency_row.dart';
import 'package:currency_converter/src/bloc/converter/converter.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@immutable
class FavouriteCurrencyList extends StatelessWidget {
  final List<Currency> currencyList;

  const FavouriteCurrencyList({
    required this.currencyList,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => SliverPadding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
        sliver: SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              // final currency = currencyList[index];

              if (index == 1) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: BlocBuilder<ConverterBLoC, ConverterState>(
                    buildWhen: (previous, current) =>
                        previous.value != current.value,
                    builder: (context, state) => SelectedCurrencyRow(
                      currency: 'UAH',
                      value: state.currentValue,
                    ),
                  ),
                );
              }

              return const Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: CurrencyRow(
                  currency: 'UAH',
                  value: '123',
                ),
              );
            },
            childCount: currencyList.length + 100,
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
              'FavouriteCurrencyList StatelessWidget',
            ),
          ),
      );
}
