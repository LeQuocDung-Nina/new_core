
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../bottom_navbar/src/bottom_bar_background.dart';
import '../bottom_navbar/tab_item.dart';
import 'provider/bottom_navbar_controller.dart';

class LayoutBottomNavbar extends StatelessWidget {
  const LayoutBottomNavbar({Key? key, required this.listScreens, required this.itemsTab}) : super(key: key);

  final List<Widget> listScreens;
  final List<TabItem> itemsTab;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Consumer(
        builder: (context, ref, child) {
          final state = ref.watch(bottomNavBarProvider);
          return listScreens[state.visit];
        },
      ),
      bottomNavigationBar: Consumer(builder: (context, ref, child) {
        final state = ref.watch(bottomNavBarProvider);
        final bottomBarController = ref.read(bottomNavBarProvider.notifier);
        return BottomBarBackground(
          items: itemsTab,
          backgroundColor: Colors.black.withOpacity(1),
          backgroundSelected: Colors.transparent,
          color: Colors.white.withOpacity(0.5),
          colorSelected: Colors.white,
          indexSelected: state.visit,
          onTap: (int index) {
            bottomBarController.changeScreen(indexScreen: index);
          },
        );
        // return BottomBarInspiredOutside(
        //   elevation: 0,
        //   items: itemsTab,
        //   backgroundColor: AppColors.COLOR_XANH_DAM.withOpacity(0.8),
        //   color: Colors.white,
        //   colorSelected: Colors.white,
        //   indexSelected: state.visit,
        //   itemStyle: ItemStyle.circle,
        //   onTap: (int index) {
        //     bottomBarController.changeScreen(indexScreen: index);
        //   },
        //   chipStyle:  ChipStyle(
        //     isHexagon: false,
        //     convexBridge: false,
        //     color: Colors.white,
        //     background: AppColors.COLOR_XANH_DAM.withOpacity(0.8),
        //   ),
        // );
      },),
    );
  }
}
