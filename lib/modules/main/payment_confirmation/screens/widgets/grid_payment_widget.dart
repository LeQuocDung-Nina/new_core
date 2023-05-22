import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../cart/models/cart_temp.dart';
import '../../../cart/providers/cart_providers.dart';
import 'item_payment_widget.dart';


class GridProductPaymentWidget extends ConsumerWidget {
  const GridProductPaymentWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final listProduct = ref.watch(cartProvider).listCartTemp;

    return Padding(
      padding: const EdgeInsets.all(10),
      child: (listProduct?.length !=null) ? GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            mainAxisSpacing: 12,
            crossAxisSpacing: 12,
            mainAxisExtent: 120,
        ),
        itemCount: listProduct?.length,
        itemBuilder: (context, index) {
          final CartTemp product = listProduct![index];
          return ItemProductPaymentWidget(product);
        },): Text("data"),
    );
    // return Text('data');
  }
}