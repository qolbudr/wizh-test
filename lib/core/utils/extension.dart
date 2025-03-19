import 'dart:math';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

extension ExtensionString on String {
  bool isValidEmail() {
    return RegExp(r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$').hasMatch(this);
  }

  num numFromCurrency() {
    // parse indonesian currency format to decimal
    final f = NumberFormat.decimalPattern('id_ID');
    return f.parse(isEmpty ? '0' : this);
  }

  String? getYouTubeId() {
    final RegExp regExp = RegExp(
      r'(?:https?:\/\/)?(?:www\.)?(?:youtube|youtu|youtube-nocookie)\.(?:com\/(?:[^\/\n\s]+\/\S+\/|\S*?[?&]v=)|(?:[^\/\n\s]+\/\S+\/)?(?:\S*?[?&]v=))([a-zA-Z0-9_-]{11})',
      caseSensitive: false,
    );

    final match = regExp.firstMatch(this);
    if (match != null) {
      return match.group(1); // This is the video ID
    }

    return null; // Return null if no match found
  }
}

extension ExtensionNum on num {
  String toCurrency({bool withSymbol = true, bool withSign = false, bool minus = false, bool isCompact = false}) {
    if (isCompact) return NumberFormat.compactCurrency(locale: 'id_ID', symbol: '').format(this);
    var f = NumberFormat.decimalPattern('id_ID');
    String result = '';

    if (withSign) {
      if (this < 0) {
        result += '-';
      } else if (this > 0) {
        result += '+';
      }
    }

    if (minus) {
      result += "-";
    }

    if (withSymbol) {
      result += "Rp ";
    }

    result += f.format(withSign ? abs() : this);

    return result;
  }

  num additionalCurrency() {
    if (this <= 10000) {
      return 10000;
    }

    if (this <= 20000) {
      return 20000;
    }

    if (this <= 50000) {
      return 50000;
    }

    if (this <= 100000) {
      return 100000;
    }

    String text = toInt().toString().replaceAll('.0', '').replaceAll('.00', '');
    num decimal = this / pow(10, text.length - 2);
    num round = decimal.ceil();
    num result = round * pow(10, text.length - 2);

    return result;
  }

  num toNearestCurrency() {
    String text = toInt().toString().replaceAll('.0', '').replaceAll('.00', '');
    num decimal = this / pow(10, text.length - 3);
    num round = decimal.ceil();
    num result = round * pow(10, text.length - 3);
    if (result == this) {
      if (this <= 10000) {
        return 10000;
      }

      if (this <= 20000) {
        return 20000;
      }

      if (this <= 50000) {
        return 50000;
      }

      if (this <= 100000) {
        return 100000;
      }
    }

    return result.additionalCurrency();
  }
}

extension ExtensionListWidget on List<Widget> {
  List<Widget> joinWidget(Widget widget) {
    List<Widget> result = [];
    for (var element in this) {
      result.addAll([element, widget]);
    }

    if (result.isNotEmpty) result.removeAt(result.length - 1);
    return result;
  }
}

extension ExtensionDateTime on DateTime {
  String format(String format) => DateFormat(format, 'id_ID').format(toLocal());

  DateTime get startOfMonth => DateTime(year, month, 1);
  DateTime get endOfMonth => DateTime(year, month + 1, 0).add(const Duration(hours: 23, minutes: 59, seconds: 59));
}
