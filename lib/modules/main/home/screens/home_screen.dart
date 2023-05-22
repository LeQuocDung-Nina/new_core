import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';




import '../providers/home_state.dart';
import '../providers/product_provider.dart';
import 'Widgets/appbar_home_widget.dart';
import 'Widgets/grid_product_widget.dart';
import 'Widgets/item__product_list_widget.dart';
import 'Widgets/search_input_widget.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);
  final double mainPadding = 16;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productNotifier = ref.read(productProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        title: const AppbarHomeWidget(),
      ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: mainPadding, horizontal: mainPadding),
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 16,),
                const SearchInputWidget(),
                const SizedBox(height: 16,),
                const Text("Danh mục sản phẩm",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 24),),
                const SizedBox(height: 16,),
                const _danhMucSanPham(),
                const SizedBox(height: 16,),
                const Text("Sản phẩm nổi bật",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,  fontSize: 24),),
                const SizedBox(height: 16,),
                SizedBox(
                  height: 900,
                  child: FutureBuilder(
                    future: productNotifier.getAllProduct(),
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
                ),

                // ElevatedButton(onPressed: (){
                //
                //   // pushNamed với queryParams
                //   // context.pushNamed(AboutLayout.pathName, queryParams: {"name":"vu manh cuong", 'age':'31', 'sex':'male'});
                //
                //   // pushNamed với params
                //   // context.pushNamed(Helpers.convertName(const AboutLayout().key), params: {"name":"vu manh cuong"});
                //
                //   // pushNamed với extra
                //   context.pushNamed(Helpers.convertName(const ProductCategoriesLayout().key));
                //
                // }, child: Text('View Product Categories')),
              ],
            ),
          ),
        ));
  }
}


//Danh mục sản phẩm
class _danhMucSanPham extends ConsumerWidget {
  const _danhMucSanPham({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productListState = ref.watch(productListProvider);

    return SizedBox(
      width: double.infinity,
      height: 300,
      child: (productListState.listProductList?.length != null) ? GridView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: productListState.listProductList!.length,
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20),
        itemBuilder: (context, index) {
          return GridTile(
              child: ProductListItem(productListModel: productListState.listProductList![index],)
          );
        },
      ):
      const SizedBox(
        width: double.infinity,
        height: 280,
        child: Align(child: Text('Đang cập nhật!')),
      ),
    );
  }
}
