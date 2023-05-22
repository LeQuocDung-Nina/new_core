import 'package:flutter/material.dart';

class ErrorNetworkLayout extends StatefulWidget {
  const ErrorNetworkLayout({Key? key}) : super(key: const Key('error404'));

  /// Định đường dẫn cho module
  static const String pathName = 'error404';
  static const String pathRoute = '/$pathName';

  @override
  State<ErrorNetworkLayout> createState() => _Error404LayoutState();
}

class _Error404LayoutState extends State<ErrorNetworkLayout> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Đây là trang Error Network'),
      ),
    );
  }
}
