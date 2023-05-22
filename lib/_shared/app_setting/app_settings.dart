import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import '../../modules/main/cart/models/cart_hive.dart';
import 'providers/setup_prvider.dart';

import '../../utils/device_info.dart';

class AppSettings{
  static Map<String, dynamic>? settings;
  static late Box boxCart;
  static late Map<String, dynamic> deviceInfo;
  static final providerContainer = ProviderContainer(
    observers: [Logger()],  // log các providers trong khu vục ProviderScope
  );

  static Future<void> setup() async {
    /// Thông tin thiết bị
    deviceInfo = await DeviceInfo.readDeviceInfo();

    /// Khai báo và đăng ký HIVE
    await _initHive();

    /// Cấu hình Firebase nếu có
    // await Firebase.initializeApp(
    //   options: DefaultFirebaseOptions.currentPlatform,
    // );

    /// Nạp các dữ liệu cần thiết khi khởi động App thông qua setupProvider  =>  Xem hàm setup() trong setupProvider
    AppSettings.providerContainer.read(setupProvider.notifier).setup();
  }

  /// Khai báo và đăng ký HIVE
  static Future<void> _initHive() async {
    await Hive.initFlutter();
    // Đăng ký các adapters (hive object) tại đây nếu có.....
    Hive.registerAdapter(ItemCartHiveAdapter());
  }
}

class Logger extends ProviderObserver {
  @override
  void didUpdateProvider(
      ProviderBase provider,
      Object? previousValue,
      Object? newValue,
      ProviderContainer container,
      ) {
    //   print('''
    // {
    //   "provider": "${provider.name ?? provider.runtimeType}",
    //   "newValue": "$newValue"
    // }''');
  }
}
