import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../utils/helpers.dart';
import '../../payment_confirmation/payment_layout.dart';
import 'widgets/grid_product_widget.dart';
import '../providers/cart_providers.dart';

class CartScreen extends ConsumerWidget {
  const CartScreen({Key? key}) : super(key: key);

  final double mainPaddingBottom = 50;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    String type = '';
    final obj = GoRouterState.of(context).extra;

    if (obj != null && obj is Map) {
      if (obj.isNotEmpty) {
        type = obj['type'];
      }else{
        type = '';
      }
    }


    final totalPrice = ref.watch(cartProvider).totalPrice;
    final totalQuantity = ref.watch(cartProvider).totalQuantity;

    return Scaffold(
      appBar: AppBar(
        title: Text('Cart Screen'),
      ),

      // body: Center(child: Text('Cart Screen'),)
      body: Container(
        padding: EdgeInsets.zero,
        child: const GridProductWidget(),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(
            bottom: (type != "new-screen") ? mainPaddingBottom : 0),
        child: Container(
          height: 60,
          color: Colors.grey,
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children:  [
                  const Icon(Icons.payment),
                  const SizedBox(
                    width: 8,
                  ),
                  InkWell(
                    onTap: () {
                      context.pushNamed(Helpers.convertName(const PaymentLayout().key));
                    },
                      child:const Text(
                    "Thanh toán",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  )),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Total: ' +
                        Helpers.formatPrice(
                            double.parse(totalPrice.toString())),
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Quantity:' + totalQuantity.toString(),
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
