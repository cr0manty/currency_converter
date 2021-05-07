import 'package:currency_converter/presentation/screens/currency_converter/widgets/empty_selected_currency.dart';
import 'package:currency_converter/presentation/screens/currency_converter/widgets/favourite_currency_list.dart';
import 'package:currency_converter/presentation/screens/currency_converter/widgets/number_keyboard.dart';
import 'package:currency_converter/presentation/screens/currency_converter/widgets/settings_button.dart';
import 'package:currency_converter/presentation/widgets/large_app_bar.dart';
import 'package:currency_converter/src/bloc/converter/converter.dart';
import 'package:currency_converter/src/repositories/base/base_currency_converter_repo.dart';
import 'package:currency_converter/src/repositories/currency_converter_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:currency_converter/utils/extensions/size.dart';
import 'package:currency_converter/utils/extensions/theme.dart';
import 'package:intl/intl.dart';

@immutable
class CurrencyConverterScreen extends StatelessWidget {
  const CurrencyConverterScreen({
    Key? key,
  }) : super(key: key);

  static Widget get page => RepositoryProvider<BaseCurrencyConverterRepo>(
        create: (context) => CurrencyConverterRepo(),
        child: BlocProvider<ConverterBLoC>(
          create: (context) => ConverterBLoC(
            context.read<BaseCurrencyConverterRepo>(),
          )..add(const ConverterEvent.fetch()),
          child: const CurrencyConverterScreen(),
        ),
      );

  @override
  Widget build(BuildContext context) => Scaffold(
        body: SizedBox(
          height: context.height,
          child: Column(
            children: [
              Expanded(
                flex: 7,
                child: CustomScrollView(
                  slivers: [
                    const LargeAppBarWrapper(
                      title: 'Converter',
                      isBackButtonEnabled: false,
                      action: SettingsButton(),
                    ),
                    BlocBuilder<ConverterBLoC, ConverterState>(
                      builder: (context, state) {
                        if (state.isLoading) {
                          return SliverFillRemaining(
                            hasScrollBody: false,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Center(
                                child: CircularProgressIndicator(
                                  valueColor: AlwaysStoppedAnimation(
                                    context.theme.indicatorColor,
                                  ),
                                ),
                              ),
                            ),
                          );
                        }

                        // if (state.isFavouriteListEmpty) {
                        //   return const EmptySelectedCurrency();
                        // }

                        return FavouriteCurrencyList(
                          currencyList: state.favouriteCurrencyList ?? [],
                        );
                      },
                    ),
                  ],
                ),
              ),
              const Expanded(
                flex: 5,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: NumberKeyboard(),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: context.bottomPadding),
                child: BlocBuilder<ConverterBLoC, ConverterState>(
                  builder: (context, state) {
                    if (state.updatedAt == null) {
                      return const SizedBox.shrink();
                    }

                    final formatted = DateFormat('dd/MM/yyyy HH:mm').format(
                      state.updatedAt!,
                    );
                    return Padding(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: Text(
                        'Updated at: $formatted',
                        style: context.textTheme.bodyText1,
                      ),
                    );
                  },
                ),
              ),
            ],
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
              'CurrencyConverterScreen StatelessWidget',
            ),
          ),
      );
}
