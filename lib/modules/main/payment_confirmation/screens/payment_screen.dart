import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:new_core/modules/main/cart/providers/cart_providers.dart';

import '../../../../utils/helpers.dart';
import 'widgets/grid_payment_widget.dart';

class PaymentScreen extends ConsumerWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  final double mainPaddingBottom = 50;
  final double mainPadding = 10;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // String type = '';
    // final obj = GoRouterState.of(context).extra;
    //
    // if (obj != null && obj is Map) {
    //   if (obj.isNotEmpty) {
    //     type = obj['type'];
    //   }else{
    //     type = '';
    //   }
    // }
    final totalPrice = ref.watch(cartProvider).totalPrice;
    final double shipPrice = 30000;
    final double totalPayment = totalPrice + shipPrice;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Thủ tục thanh toán'),
      ),

      // body: Center(child: Text('Cart Screen'),)
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(mainPadding),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 16,
              ),
              const Text(
                "Địa chỉ giao hàng",
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey.withOpacity(0.5),
                ),
                child: Row(
                  children: [
                    const Icon(
                      Icons.location_on,
                      size: 40,
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("Nhà riêng"),
                        Text("123 Quang Trung, Gò Vấp, Tp. HCM"),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const Text(
                "Danh sách sản phẩm",
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(
                height: 16,
              ),
              const SizedBox(
                  // height: 1000,
                  child: const GridProductPaymentWidget()),
              const SizedBox(
                height: 16,
              ),
              const Text(
                "Phương thức vận chuyển",
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey.withOpacity(0.5),
                ),
                child: Row(
                  children: const [
                    Icon(
                      Icons.directions_bike_rounded,
                      size: 30,
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Text("Chọn phương thức vận chuyển"),
                  ],
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey.withOpacity(0.5),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text("Tạm tính:"),
                        Text(
                          Helpers.formatPrice(
                              double.parse(totalPrice.toString())),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text("Phí giao hàng:"),
                        Text(
                          Helpers.formatPrice(
                              double.parse(shipPrice.toString())),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text("Tổng tiền:totalPayment"),
                        Text(
                          Helpers.formatPrice(
                              double.parse(totalPayment.toString())),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Container(
          height: 60,
          decoration: BoxDecoration(
            color: Colors.blueAccent,
            borderRadius: BorderRadius.circular(50),
          ),
          child:  Center(
              child: InkWell(
                onTap: () {
                  print("Đã thanh toán");
                },
                  child:const Text(
            "Thanh toán ngay",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ))),
        ),
      ),
    );
  }
}
