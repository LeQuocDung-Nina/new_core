import 'package:flutter/material.dart';
import '../widgets/bottom_navbar/tab_item.dart';
import '../widgets/layout_bottom_navbar/layout_bottom_navbar.dart';
import 'cart/cart_layout.dart';
import 'home/home_layout.dart';
import 'product_categories/screens/product_categories_screen.dart';


class MainLayout extends StatelessWidget {
  const MainLayout({Key? key}) : super(key: const Key('main'));

  @override
  Widget build(BuildContext context) {
    List<Widget> listScreens = [
      const HomeLayout(),
      const ProductCategoriesScreen(),
      const CartLayout(),
      const HomeLayout(),
      const HomeLayout(),
    ];
    List<TabItem> items = [
      const TabItem(
        icon: Icons.home,
        title: '',
      ),
      const TabItem(
        icon: Icons.featured_play_list_outlined,
        title: '',
      ),
      const TabItem(
        icon: Icons.shopping_cart_outlined,
        title: '',
      ),
      const TabItem(
        icon: Icons.favorite_border,
        title: '',
      ),
      const TabItem(
        icon: Icons.account_box,
        title: '',
      ),

    ];
    return LayoutBottomNavbar(
      listScreens: listScreens,
      itemsTab: items,
    );
  }
}
