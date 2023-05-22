import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'widgets/grid_product_widget.dart';
import 'providers/product_provider.dart';

class ProductLayout extends ConsumerWidget {
  const ProductLayout({Key? key}) : super(key: const Key('products'));

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productNotifier = ref.read(productProvider.notifier);
    final obj = GoRouterState.of(context).extra as Map;
    String nameCategory = '';
    String idCategory = '';
    if(obj.isNotEmpty){
      nameCategory = obj['name'];
      idCategory = obj['id'];
    }

    return Scaffold(
      appBar: AppBar(title: Text((nameCategory.isNotEmpty) ? nameCategory.toUpperCase() : 'Sản phẩm'.toUpperCase()),),
      body: FutureBuilder(
        future: productNotifier.getAllProduct(idCategory: idCategory),
        builder: (context, snapshot) {
          if(snapshot.hasData){
            final data = snapshot.data;
            if(data!=null){
              return const GridProductWidget();
            }
          }
          if(snapshot.hasError){
            return Text('Lỗi dữ liệu');
          }
          return const Center(child: CircularProgressIndicator.adaptive(),);
        },),
    );
  }
}

