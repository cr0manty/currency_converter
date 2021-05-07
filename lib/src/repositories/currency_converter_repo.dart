import 'package:currency_converter/src/repositories/base/base_currency_converter_repo.dart';

export 'base/base_currency_converter_repo.dart';

class CurrencyConverterRepo extends BaseCurrencyConverterRepo {
  @override
  Future<void> close() async {}

  @override
  Future<void> init() async {}
}
