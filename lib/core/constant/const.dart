import 'package:flutter/material.dart';

class Const {
  static const String appTitle = 'Wizh Travel';
  static double siblingMargin({double? x}) => (x ?? 1) * 4;
  static double parentMargin({double? x}) => siblingMargin(x: x) * 4;
  static Widget gap({double? x}) => SizedBox(width: siblingMargin(x: x), height: siblingMargin(x: x));

  static RegExp textRegex = RegExp("[^a-zA-Z0-9 `~!@#\$%^&*()_=+:;',.<>/?\"{}[\\]\\\\|-]", unicode: true);
  static RegExp numberRegex = RegExp("[0-9]", unicode: true);
  static RegExp decimalRegex = RegExp("[0-9.,]+", unicode: true);

  static String dateTimeFormat_1 = 'dd MMM yyyy, HH:mm'; // 10 Jan 2020, 10:00
  static String dateTimeFormat_2 = 'dd MMMM yyyy'; // 10 Januari 2020
  static String dateTimeFormat_3 = 'EEEE, dd MMMM yyyy'; // Senin, 10 Januari 2020
  static String dateTimeFormat_4 = 'HH:mm, dd MMM yyyy'; // 10:00 10 Jan 2020
  static String dateTimeFormat_5 = 'dd MMM yyyy'; // 10 Jan 2020
  static String dateTimeFormat_6 = 'dd MMM yyyy HH:mm'; // 10 Jan 2020, 10:00

  static String mapsUrl = 'https://www.google.com/maps/vt/pb=!1m4!1m3!1i{z}!2i{x}!3i{y}!2m3!1e0!2sm!3i420120488!3m7!2sen!5e1105!12m4!1e68!2m2!1sset!2sRoadmap!4e0!5m1!1e0!23i4111425';
  static String oneSignalAppId = '2ff1a83f-5ef0-45c7-bbef-e0f3724ae38e';
  static String wsUrl = 'wss://admin.jobdis.site';
  static String baseUrl = 'https://tanipedia.site/api';
  static String urlHost = 'https://tanipedia.site';
}
