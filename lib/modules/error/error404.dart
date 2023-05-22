import 'package:flutter/material.dart';

class Error404Layout extends StatefulWidget {
  const Error404Layout({Key? key}) : super(key: const Key('error404'));

  /// Định đường dẫn cho module
  static const String pathName = 'error404';
  static const String pathRoute = '/$pathName';

  @override
  State<Error404Layout> createState() => _Error404LayoutState();
}

class _Error404LayoutState extends State<Error404Layout> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Đây là trang Error 404'),
      ),
    );
  }
}
