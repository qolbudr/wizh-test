import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

class InputNumberFormatter extends TextInputFormatter {
  const InputNumberFormatter({this.min, this.max});
  final num? min, max;

  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    String value = newValue.text;
    final number = num.tryParse(value) ?? 0;

    if(value == '0') return TextEditingValue(text: '0', selection: TextSelection.fromPosition(const TextPosition(offset: '0'.length)));

    if (value.isNotEmpty) {
      if (max != null) {
        if (number >= max!) value = max.toString();
      }

      if (min != null) {
        if (number <= min!) return newValue.copyWith(text: '$min', selection: TextSelection.collapsed(offset: '$min'.length));
      }
    }

    return TextEditingValue(text: value, selection: TextSelection.fromPosition(TextPosition(offset: value.length)));
  }
}

class CurrencyInputFormatter extends TextInputFormatter {
  final num? max;
  final num min;
  final num? decimal;

  CurrencyInputFormatter({this.min = 0, this.max, this.decimal});

  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    final f = NumberFormat.decimalPattern('id_ID');

    bool hasDecimal = newValue.text.contains(f.symbols.DECIMAL_SEP);

    if (decimal != null && decimal! > 0) {
      if (newValue.text.split(f.symbols.DECIMAL_SEP).length > 2) return oldValue;
      if (hasDecimal && newValue.text.substring(newValue.text.indexOf(f.symbols.DECIMAL_SEP) + 1).length > decimal!) return oldValue;
      if (hasDecimal && newValue.text.substring(newValue.text.indexOf(f.symbols.DECIMAL_SEP) + 1).isEmpty) return newValue;
    } else {
      if (hasDecimal) return oldValue;
    }

    num value = f.parse(newValue.text.isEmpty ? '$min' : newValue.text);

    if (value <= min) return newValue.copyWith(text: '$min', selection: TextSelection.collapsed(offset: '$min'.length));

    if (max != null && value > max!) value = max!;

    String newText = f.format(value);
    return newValue.copyWith(text: newText, selection: TextSelection.collapsed(offset: newText.length));
  }
}

class PercentageInputFormatter extends TextInputFormatter {
  final num max;
  final num min;
  final num? decimal;

  PercentageInputFormatter({this.min = 0, this.max = 100, this.decimal});

  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    final f = NumberFormat.decimalPattern('en_US');

    bool hasDecimal = newValue.text.contains(f.symbols.DECIMAL_SEP);

    if (decimal != null && decimal! > 0) {
      if (newValue.text.split(f.symbols.DECIMAL_SEP).length > 2) return oldValue;
      if (hasDecimal && newValue.text.substring(newValue.text.indexOf(f.symbols.DECIMAL_SEP) + 1).length > decimal!) return oldValue;
      if (hasDecimal && newValue.text.substring(newValue.text.indexOf(f.symbols.DECIMAL_SEP) + 1).isEmpty) return newValue;
    } else {
      if (hasDecimal) return oldValue;
    }

    num value = f.parse(newValue.text.isEmpty ? '$min' : newValue.text);

    if (value <= min) return newValue.copyWith(text: '$min', selection: TextSelection.collapsed(offset: '$min'.length));

    if (value > max) value = max;

    String newText = f.format(value);
    return newValue.copyWith(text: newText, selection: TextSelection.collapsed(offset: newText.length));
  }
}
