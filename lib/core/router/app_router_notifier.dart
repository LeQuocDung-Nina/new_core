import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../_shared/thietlap_router.dart';

class AppRouterNotifier extends AsyncNotifier<void> implements Listenable {
  VoidCallback? routerListener;

  @override
  Future<void> build() async {
    ref.listenSelf((_, __) {
      if (state.isLoading) return;
      routerListener?.call();
    });
  }

  /// Redirects the user when our authentication changes
  Future<String?>? redirect(BuildContext context, GoRouterState state) {
    if (this.state.isLoading || this.state.hasError) return null;

    final isSplash = state.location == pathSplash;
    if (isSplash) { return cho03giay(); }
    return null;
  }

  /// Định tuyên
  Future<String?> cho03giay() async{
    await Future.delayed(const Duration(seconds: 3));
    return pathOnboarding;
  }

  @override
  void addListener(VoidCallback listener) {
    routerListener = listener;
  }

  @override
  void removeListener(VoidCallback listener) {
    routerListener = null;
  }
}

final routerNotifierProvider = AsyncNotifierProvider<AppRouterNotifier, void>(() {
  return AppRouterNotifier();
});
