abstract class BaseCurrencyConverterRepo {
  Future<void> close();

  Future<void> init();
}
