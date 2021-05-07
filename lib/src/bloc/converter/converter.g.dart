// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'converter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ConverterState _$_$_ConverterStateFromJson(Map<String, dynamic> json) {
  return _$_ConverterState(
    isLoading: json['isLoading'] as bool? ?? false,
    value: json['value'] as String? ?? '',
    currencyList: (json['currencyList'] as List<dynamic>?)
        ?.map((e) => Currency.fromJson(e as Map<String, dynamic>))
        .toList(),
    favouriteCurrencyList: (json['favouriteCurrencyList'] as List<dynamic>?)
        ?.map((e) => Currency.fromJson(e as Map<String, dynamic>))
        .toList(),
    updatedAt: json['updatedAt'] == null
        ? null
        : DateTime.parse(json['updatedAt'] as String),
    selectedCurrency: json['selectedCurrency'] as int?,
  );
}

Map<String, dynamic> _$_$_ConverterStateToJson(_$_ConverterState instance) =>
    <String, dynamic>{
      'isLoading': instance.isLoading,
      'value': instance.value,
      'currencyList': instance.currencyList,
      'favouriteCurrencyList': instance.favouriteCurrencyList,
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'selectedCurrency': instance.selectedCurrency,
    };
