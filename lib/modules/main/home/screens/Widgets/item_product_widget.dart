import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../providers/product_provider.dart';
import '../../models/product_model.dart';
import '../../providers/product_favourites_provider.dart';
import '../../../product_detail/product_detail_layout.dart';
import '../../../../../utils/helpers.dart';


class ItemProductWidget extends ConsumerWidget {
  const ItemProductWidget(
    this.product, {
    Key? key,
  }) : super(key: key);

  final ProductModel product;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isFav =
        ref.read(productFavouritesProvider.notifier).checkExit(product.id);
    return GestureDetector(
      onTap: () {
        context.pushNamed(Helpers.convertName(const ProductDetailLayout().key),
            extra: {'id': product.id.toString()});
      },
      child: Container(
        decoration: BoxDecoration(
            color: Colors.black26, borderRadius: BorderRadius.circular(8)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.white,
              width: double.infinity,
              height: 150,
              child: CachedNetworkImage(
                imageUrl: product.photo!,
                fit: BoxFit.fitHeight,
                placeholder: (context, url) =>
                    const CircularProgressIndicator.adaptive(),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Text(product.namevi ?? '',
                      style: TextStyle(fontSize: 17, color: Colors.white),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left),
                  const SizedBox(height: 15),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(Helpers.formatPrice(double.parse(product.regular_price.toString())),
                          textAlign: TextAlign.left,
                          style: const TextStyle(
                              color: Colors.redAccent,
                              fontSize: 15,
                              fontWeight: FontWeight.w700)),
                      GestureDetector(
                          onTap: () {
                            ref
                                .read(productProvider.notifier)
                                .tongleFav(product.id);

                          },
                          child: (isFav)
                              ? const Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                )
                              : const Icon(Icons.favorite_border_outlined)),
                    ],
                  ),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}


