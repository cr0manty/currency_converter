import 'package:freezed_annotation/freezed_annotation.dart';

part 'currency.freezed.dart';

part 'currency.g.dart';

@freezed
class Currency with _$Currency {
  const Currency._();

  const factory Currency() = _Currency;

  factory Currency.fromJson(Map<String, dynamic> json) =>
      _$_$_CurrencyFromJson(json);
}
