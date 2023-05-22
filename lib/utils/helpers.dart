import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:html_unescape/html_unescape.dart';
import 'package:intl/intl.dart';

class Helpers{
  static exitApp() {
    if (Platform.isAndroid) {
      SystemNavigator.pop();
    } else if (Platform.isIOS) {
      exit(0);
    }
  }

  static statusBar({required bool show}) {
    if (show == true) {
      return SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
          overlays: SystemUiOverlay.values);
    }
    return SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);
  }

  static String convertName(Key? key) {
    String strReturn = key.toString();
    strReturn = strReturn.replaceAll("[<'", "");
    strReturn = strReturn.replaceAll("'>]", "");
    return strReturn;
  }

  static String convertHTML(String contentvi) {
    var unescape = HtmlUnescape();
    var textConvert = unescape.convert(contentvi);
    return textConvert;
  }

  static MaterialColor getMaterialColor(Color color) {
    final int red = color.red;
    final int green = color.green;
    final int blue = color.blue;
    final Map<int, Color> shades = {
      50: Color.fromRGBO(red, green, blue, .1),
      100: Color.fromRGBO(red, green, blue, .2),
      200: Color.fromRGBO(red, green, blue, .3),
      300: Color.fromRGBO(red, green, blue, .4),
      400: Color.fromRGBO(red, green, blue, .5),
      500: Color.fromRGBO(red, green, blue, .6),
      600: Color.fromRGBO(red, green, blue, .7),
      700: Color.fromRGBO(red, green, blue, .8),
      800: Color.fromRGBO(red, green, blue, .9),
      900: Color.fromRGBO(red, green, blue, 1),
    };
    return MaterialColor(color.value, shades);
  }

  static String formatPrice(number, {String locale='vi', String unit = ' VNĐ'}) {
    final formatCurrency = NumberFormat.currency(locale: locale, symbol: unit);
    return formatCurrency.format(number);
  }
}