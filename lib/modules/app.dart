import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import '../_shared/app_setting/providers/setup_prvider.dart';

import '../_shared/thietlap_default.dart';
import '../_shared/thietlap_theme.dart';
import '../core/router/app_router.dart';
import 'error/error_no_internet.dart';

class NDApp extends ConsumerWidget {
  const NDApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: NDSharedDefault.localeDelegate,
      supportedLocales: NDSharedDefault.supportedLocales,
      locale: NDSharedDefault.localeDefault,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: AppTheme.themeModeDefault,
      routerConfig: router,
      builder: (context, child) => MainApp(child),
    );
  }
}

class MainApp extends ConsumerStatefulWidget {
  const MainApp(
    this.child, {
    Key? key,
  }) : super(key: key);

  final Widget? child;

  @override
  ConsumerState createState() => _MainAppState();
}

class _MainAppState extends ConsumerState<MainApp> {
  late final StreamSubscription<InternetConnectionStatus> listenerInternet;
  bool hasInternet = true;

  @override
  void initState() {
    super.initState();
    listenerInternet =
        InternetConnectionChecker().onStatusChange.listen((status) {
      switch (status) {
        case InternetConnectionStatus.connected:
          setState(() {
            hasInternet = true;
          });
          break;
        case InternetConnectionStatus.disconnected:
          setState(() {
            hasInternet = false;
          });
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final appState = ref.watch(setupProvider);
    return Scaffold(
      body: (hasInternet)
          ? (appState.appStatus == AppStatus.loadFinished)
              ? widget.child
              : const Center(
                  child: CircularProgressIndicator.adaptive(),
                )
          : const ErrorNetworkLayout(),
    );
  }

  @override
  void dispose() {
    super.dispose();
    listenerInternet.cancel();
  }
}
