import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:new_core/modules/main/cart/models/cart_model.dart';
import 'package:new_core/modules/main/cart/models/cart_temp.dart';
import 'package:new_core/modules/main/cart/providers/cart_providers.dart';
import 'item_product_widget.dart';


class GridProductWidget extends ConsumerWidget {
  const GridProductWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final listProduct = ref.watch(cartProvider).listCartTemp;

    return Padding(
      padding: const EdgeInsets.all(10),
      child: (listProduct?.length !=null) ? GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            mainAxisSpacing: 12,
            crossAxisSpacing: 12,
            mainAxisExtent: 120,
        ),
        itemCount: listProduct?.length,
        itemBuilder: (context, index) {
          final CartTemp product = listProduct![index];
          return ItemProductWidget(product);
        },): Text("data"),
    );
    // return Text('data');
  }
}