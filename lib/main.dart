import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '_shared/app_setting/app_settings.dart';
import 'modules/app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppSettings.setup();
  runApp(
      UncontrolledProviderScope(
          container: AppSettings.providerContainer,
          child: const NDApp()
      )
  );
}