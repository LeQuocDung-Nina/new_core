import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/product_model.dart';
import '../providers/product_provider.dart';
import 'item_product_widget.dart';

class GridProductWidget extends ConsumerWidget {
  const GridProductWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final listProduct = ref.watch(productProvider);
    return Padding(
      padding: const EdgeInsets.all(10),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 12,
            crossAxisSpacing: 12,
            mainAxisExtent: 260
        ),
        itemCount: listProduct.length,
        itemBuilder: (context, index) {
          final ProductModel product = listProduct[index];
          return ItemProductWidget(product);
        },),
    );
  }
}