import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_html/style.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../../utils/helpers.dart';
import '../../cart/cart_layout.dart';

import '../../cart/models/cart_model.dart';
import '../../cart/providers/cart_providers.dart';
import '../providers/product_detail_providers.dart';

class ProductDetailScreen extends ConsumerStatefulWidget {
  const ProductDetailScreen({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState createState() => _ProductDetailScreenState();
}

String? slColor = "";
String? slSize = "";
int selectedColorIndex = 0;
int selectedSizeIndex = 0;

class _ProductDetailScreenState extends ConsumerState<ProductDetailScreen> {
  @override
  Widget build(BuildContext context) {
    final data = GoRouterState.of(context).extra as Map;
    final response = ref.watch(productDetailProvider(int.parse(data['id'])));
    // ColorModel? selectedColor;
    void onProductItemClick() {
      setState(() {
        slColor = "";
        slSize = "";
        selectedColorIndex = 0;
        selectedSizeIndex = 0;
      });
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Chi Tiết Sản Phẩm'),
      ),
      body: FutureBuilder(
        future: response,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final product = snapshot.data;
            if (product != null) {
              return SingleChildScrollView(
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CachedNetworkImage(
                        imageUrl: product.photo ?? '',
                        fit: BoxFit.fitHeight,
                        placeholder: (context, url) =>
                            const CircularProgressIndicator.adaptive(),
                        errorWidget: (context, url, error) =>
                            const Icon(Icons.error),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(product.namevi ?? 'No Product'),
                      const SizedBox(
                        height: 15,
                      ),
                      if (product.color != null && product.color!.isNotEmpty)
                        Row(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(right: 16),
                              child: Text('Color:'),
                            ),
                            Expanded(
                              child: SizedBox(
                                height: 30,
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: product.color!.length,
                                  itemBuilder: (context, index) {
                                    final color = product.color![index];
                                    final isSelected =
                                        (index == selectedColorIndex);
                                    return GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          selectedColorIndex = index;
                                          slColor = color.color;
                                        });
                                      },
                                      child: Container(
                                        margin:
                                            const EdgeInsets.only(right: 10),
                                        width: 30,
                                        height: 30,
                                        decoration: BoxDecoration(
                                          color: Color(
                                              int.parse('0xFF${color.color}')),
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                            color: isSelected
                                                ? Colors.white
                                                : Colors.transparent,
                                            width: 2,
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      const SizedBox(
                        height: 15,
                      ),
                      if (product.size != null && product.size!.isNotEmpty)
                        Row(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(right: 16),
                              child: Text('Size:'),
                            ),
                            Expanded(
                              child: SizedBox(
                                height: 30,
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: product.size!.length,
                                  itemBuilder: (context, index) {
                                    final size = product.size![index];

                                    final isSizeSelected =
                                        (index == selectedSizeIndex);
                                    return GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          selectedSizeIndex = index;
                                          slSize = size.namevi;
                                        });
                                      },
                                      child: Container(
                                        margin:
                                            const EdgeInsets.only(right: 10),
                                        width: 60,
                                        height: 30,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          // shape: BoxShape.circle,
                                          border: Border.all(
                                            color: isSizeSelected
                                                ? Colors.red
                                                : Colors.transparent,
                                            width: 2,
                                          ),
                                        ),
                                        child: Align(
                                            child: Text(
                                          size.namevi.toString(),
                                          style: const TextStyle(
                                              color: Colors.black),
                                        )),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      const SizedBox(
                        height: 15,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          context.pushNamed(Helpers.convertName(const CartLayout().key),
                              extra: {'type': "new-screen"});
                          ref.read(cartProvider.notifier).toggleCart(
                              item: CartModel(
                                  id: product.id,
                                  quantity: 1,
                                  colorTemp: slColor,
                                  sizeTemp: slSize));
                          onProductItemClick();
                        },
                        child: const Text('Thêm vào giỏ hàng'),
                      ),
                      const SizedBox(
                        height: 16,
                      ),

                      (product.contentvi.toString() != '')
                          ? Html(data: Helpers.convertHTML(product.contentvi.toString()),
                        style: {
                            'H1':Style(color: Colors.red,fontSize: FontSize(20)),
                            'h2':Style(color: Colors.red,fontSize: FontSize(18)),
                            'h3':Style(color: Colors.red,fontSize: FontSize(16)),
                            'h4':Style(color: Colors.red,fontSize: FontSize(16)),
                            'h5':Style(color: Colors.red,fontSize: FontSize(16)),
                            'p':Style(color: Colors.white),
                        },

                      )
                          : Container(
                              width: double.infinity,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.5),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(10)),
                              ),
                              child: const Center(
                                  child: Text(
                                "Nội dung đang cập nhật !",
                                style: TextStyle(fontSize: 16),
                              ))),
                    ],
                  ),
                ),
              );
            }
            return const Text('Không tìm thấy sản phẩm');
          }
          if (snapshot.hasError) return Text('Có lỗi');
          return const Center(child: CircularProgressIndicator.adaptive());
        },
      ),
    );
  }
}
