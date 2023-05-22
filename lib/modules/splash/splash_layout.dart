import 'package:flutter/material.dart';

class SplashLayout extends StatefulWidget {
  const SplashLayout({Key? key}) : super(key: const Key('splash'));


  @override
  State<SplashLayout> createState() => _SplashLayoutState();
}

class _SplashLayoutState extends State<SplashLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Đây là trang Splash'),
      ),
    );
  }
}
