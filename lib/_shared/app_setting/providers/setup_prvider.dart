import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';
import 'package:new_core/_shared/app_setting/app_settings.dart';
import 'package:new_core/modules/main/product/providers/product_provider.dart';

import '../../thietlap_default.dart';

/// Danh sách các trạng thái của App
enum AppStatus{loading, loadFinished}

/// Trạng thái của App
class AppState{
  // Trạng thái của App
  final AppStatus appStatus;

  // Trạng thái mặt định của App là loading
  AppState({this.appStatus = AppStatus.loading});

  AppState copyWith({AppStatus? appStatus}){
    return AppState(appStatus: appStatus ?? this.appStatus);
  }
}

/// SetupNotifier xử lý các logic liên quan tới nạp dữ liệu
class SetupNotifier extends Notifier<AppState> {
  late final Box _boxSettings;
  late final Box _boxCart;

  @override
  AppState build() {
    return AppState();
  }

  /// Hàm setup() để nạp các dự liệu cần thiết lúc App khởi chạy
  /// Có thể read nhiều provider bằng cách sử dụng ref.read(<name_provider>)
  setup() async {
    // Bắt đầu nạp các dữ liệu cần thiết...  (appStatus.loading)
    await _loadSettingsFromLocal();
    await ref.read(productProvider.notifier).getAllProduct();
    state = state.copyWith(appStatus: AppStatus.loadFinished); // Đã nạp xong các dữ liệu cần thiết (appStatus.loadFinished)
  }

  /// Nạp các cài đặt Local cho App
  _loadSettingsFromLocal() async {
    _boxSettings = await Hive.openBox(NDSharedDefault.boxSettings);
    _boxCart = await Hive.openBox(NDSharedDefault.boxCarts);
    AppSettings.settings = _boxSettings.get('settings');
    AppSettings.boxCart = _boxCart;
  }
}

/// Provider
final setupProvider = NotifierProvider<SetupNotifier, AppState>(() {
  return SetupNotifier();
});