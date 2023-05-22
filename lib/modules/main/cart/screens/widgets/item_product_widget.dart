import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:new_core/modules/main/cart/models/cart_model.dart';
import 'package:new_core/modules/main/cart/models/cart_temp.dart';
import 'package:new_core/modules/main/cart/providers/cart_providers.dart';

import '../../../../../utils/helpers.dart';

class ItemProductWidget extends ConsumerWidget {
  const ItemProductWidget(
    this.product, {
    Key? key,
  }) : super(key: key);

  final CartTemp product;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.black26, borderRadius: BorderRadius.circular(8)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            color: Colors.white,
            width: 90,
            height: 90,
            child: CachedNetworkImage(
              imageUrl: product.photo!,
              fit: BoxFit.fitHeight,
              placeholder: (context, url) =>
                  const CircularProgressIndicator.adaptive(),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(product.namevi ?? '',
                      style: TextStyle(fontSize: 17, color: Colors.white),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      if (product.colorTemp != "null" && product.colorTemp!.isNotEmpty)
                        Row(
                          children: [
                            const Text("Màu sắc:"),
                            const SizedBox(width: 10,),
                            Container(
                              margin: const EdgeInsets.only(right: 10),
                              width: 20,
                              height: 20,
                              decoration: BoxDecoration(
                                color: Color(int.parse('0xFF${product.colorTemp.toString()}')),
                                shape: BoxShape.circle,
                              ),
                            ),
                          ],
                        ),
                      const SizedBox(width: 16,),
                      if (product.sizeTemp != "null" && product.sizeTemp!.isNotEmpty)
                        Row(
                          children: [
                            const Text("Size:"),
                            Text(product.sizeTemp.toString()),
                            const SizedBox(width: 10,),

                          ],
                        ),
                    ],
                  ),
                  const SizedBox(height: 8),

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                          Helpers.formatPrice(
                              double.parse(product.regular_price.toString())),
                          textAlign: TextAlign.left,
                          style: const TextStyle(
                              color: Colors.redAccent,
                              fontSize: 15,
                              fontWeight: FontWeight.w700)),
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              ref.read(cartProvider.notifier).increaseCart(
                                  item: CartModel(
                                      id: product.id,
                                      sizeTemp: product.sizeTemp,
                                      colorTemp: product.colorTemp,
                                      quantity: product.quantity));
                            },
                            child: Text("Thêm"),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Text(
                            product.quantity.toString(),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          InkWell(
                            onTap: () {
                              ref.read(cartProvider.notifier).reduceCart(
                                  item: CartModel(
                                      id: product.id,
                                      sizeTemp: product.sizeTemp,
                                      colorTemp: product.colorTemp,
                                      quantity: product.quantity));
                            },
                            child: Text("Bớt"),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
