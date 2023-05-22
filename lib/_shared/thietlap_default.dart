import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import '../generated/l10n.dart';

class NDSharedDefault {
  /// Thiết lập Ngôn ngữ mặc định [en: English - vi: VietNam]
  static const Iterable<LocalizationsDelegate<dynamic>> localeDelegate = [
    AppLocalizationDelegate(),
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate
  ];
  static final Iterable<Locale> supportedLocales = const AppLocalizationDelegate().supportedLocales;
  static const Locale localeDefault = Locale('vi');
  /// Kết thúc : Thiết lập Ngôn ngữ mặc định [en: English - vi: VietNam]


  /// Tên box lưu các cấu hình của App (Box => có thể hiểu là 1 table trong MySQL)
  static const String boxSettings = 'box_settings';   // table box_settings
  static const String boxCarts = 'box_carts';   // table box_settings
  static const String keyBoxSettings = 'settings';    // key: settings
}

/// Hàm sử dụng ngonngu làm alias cho AppLocalazation.of(context) để gọi các chuỗi ngôn ngữ
/// Cách sử dụng ${ngonngu(context).<key_ngon_ngu>
/// Mục đích để dễ nhớ và rút ngắn cú pháp khi sử dụng các biến ngôn ngữ
S ngonngu(BuildContext context) {
  return S.of(context);
}