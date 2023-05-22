import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:new_core/modules/main/home/home_layout.dart';

import '../../utils/helpers.dart';

class OnboardingLayout extends StatefulWidget {
  const OnboardingLayout({Key? key}) : super(key: const Key('onboarding'));

  @override
  State<OnboardingLayout> createState() => _OnboardingLayoutState();
}

class _OnboardingLayoutState extends State<OnboardingLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Đây là trang Onboarding Layout'),
            ElevatedButton(
              onPressed: () async{
                context.pushNamed(Helpers.convertName(const HomeLayout().key));
              },
              child: const Text('Push B Screen'),
            ),
          ],
        ),
      ),
    );
  }
}
