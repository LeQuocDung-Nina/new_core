import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:new_core/modules/main/product/product_layout.dart';
import 'package:new_core/utils/helpers.dart';
import '../models/category_model.dart';
import '../providers/category_providers.dart';

class ProductCategoriesScreen extends ConsumerWidget {
  const ProductCategoriesScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('Danh sách Categories'),),
      body: SingleChildScrollView(
        child: Column(
          children: [
            FutureBuilder(
              future: ref.read(categoryProvider.notifier).getAllCategories(),
              builder: (context, snapshot) {
                if(snapshot.hasData){
                  return const ListCategories();
                }
                if(snapshot.hasError){
                  return Text('Lỗi dữ liệu');
                }
                return const Center(child: CircularProgressIndicator.adaptive(),);
              },),
          ],
        ),
      ),
    );
  }
}

class ListCategories extends ConsumerWidget {
  const ListCategories({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final listCategories = ref.watch(categoryProvider.select((value) => value.listCategories));
    return (listCategories!=null) ? ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: listCategories.length,
      itemBuilder: (context, index) {
        final CategoryModel category = listCategories[index];
        return ListTile(
          tileColor: (index%2==0) ? Colors.black26 : Colors.black38,
          title: Text(category.namevi.toUpperCase()),
          leading: const Icon(Icons.face),
          onTap: (){
            context.pushNamed(Helpers.convertName(const ProductLayout().key), extra: {'id':category.id,'name':category.namevi});
          },
        );
      },) : Container();
  }
}