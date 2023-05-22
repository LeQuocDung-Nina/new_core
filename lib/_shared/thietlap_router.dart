/// Lưu ý : Import đường dẫn các module theo Relative
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../modules/main/cart/cart_layout.dart';
import '../modules/main/payment_confirmation/payment_layout.dart';
import '../modules/main/product_detail/product_detail_layout.dart';
import '../modules/main/product_categories/product_categories_layout.dart';
import '../modules/main/main_layout.dart';
import '../modules/main/about/about_layout.dart';
import '../modules/main/home/home_layout.dart';

import '../modules/main/product/product_layout.dart';
import '../modules/onboarding/onboarding_layout.dart';
import '../modules/splash/splash_layout.dart';
import '../modules/error/error404.dart';
import '../utils/helpers.dart';

/// Đây là module mặc định sẽ được load sau khi ứng dụng được khởi chạy
String routeMacDinh = '/';
const bool isDebugRoute = false;
Widget routeError = const Error404Layout();

String pathSplash = "/${Helpers.convertName((const SplashLayout().key))}";
String pathOnboarding = "/${Helpers.convertName((const OnboardingLayout().key))}";


/// Đây là Danh sách các module chính sử dụng trong ứng dụng
final List<GoRoute> danhsachRoute = [
  addGoRouter(const SplashLayout(), isSubModule: false),
  addGoRouter(const OnboardingLayout(), isSubModule: false),
  // addGoRouter(const Error404Layout(), isSubModule: false),
  addGoRouterParent(const MainLayout(), [
    addGoRouter(const HomeLayout()),
    // có params thì phải định nghĩa pathParams
    // addGoRouter(const AboutLayout(), pathParams: '/:name'),
    addGoRouter(const AboutLayout()),
    addGoRouter(const ProductCategoriesLayout()),
    addGoRouter(const ProductLayout()),
    addGoRouter(const ProductDetailLayout()),
    addGoRouter(const CartLayout()),
    addGoRouter(const PaymentLayout()),
  ]),
];

GoRoute addGoRouter(Widget modules, {bool isSubModule = true, String? pathParams}) {
  String strName = Helpers.convertName(modules.key);
  String strPath = strName;
  if (!isSubModule) strPath = "/$strPath";
  if (pathParams!=null) strPath += pathParams;
  return GoRoute(
    name: strName,
    path: strPath,
    pageBuilder: (context, state) {
      return effectTransitionFade(state, modules);
    },
  );
}

GoRoute addGoRouterParent(Widget modules, List<GoRoute> submodules) {
  String strName = Helpers.convertName(modules.key);
  String strPath = (strName=='main') ? "/" : "/$strName";
  return GoRoute(
      name: strName,
      path: strPath,
      pageBuilder: (context, state) => effectTransitionFade(state, modules),
      routes: submodules);
}

CustomTransitionPage effectTransitionFade(GoRouterState state, Widget child) {
  return CustomTransitionPage(
    key: state.pageKey,
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return FadeTransition(
        opacity: CurveTween(curve: Curves.easeInOutCirc).animate(animation),
        child: child,
      );
    },
  );
}