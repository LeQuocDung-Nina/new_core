
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../../../utils/helpers.dart';
import '../../../product/product_layout.dart';
import '../../models/product_list_model.dart';


class ProductListItem extends ConsumerWidget {
  const ProductListItem({
    Key? key,required this.productListModel,
  }) : super(key: key);

 final ProductListModel productListModel;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () {
        context.pushNamed(Helpers.convertName(const ProductLayout().key), extra: {'id':productListModel.id,'name':productListModel.namevi});
      },
      child: Container(
        padding: EdgeInsets.zero,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(50), // Đường viền là hình tròn có bán kính 50
              child: Image.network(
                productListModel!.photo ?? '',
                width: 82,
                height: 82,
                fit: BoxFit.cover,
                errorBuilder: (BuildContext context, Object exception, StackTrace? stackTrace) {
                  // Nếu có lỗi khi tải hình ảnh, sử dụng hình ảnh mặc định từ thư mục assets/images
                  return const Image(image: AssetImage('assets/images/dulieurong.png'),
                    width: 82,
                    height: 82,
                    fit: BoxFit.cover,
                  );
                },
              ),
            ),
            const SizedBox(height: 16,),
            Text(
              productListModel!.namevi ?? '',
              style: const TextStyle(fontSize: 13, color: Colors.white),
              maxLines: 1, // Số dòng tối đa là 1
              overflow: TextOverflow.ellipsis, // Các ký tự dư thừa được thay thế bởi dấu "..."
              softWrap: false, // Không bọc dòng
            ),
          ],
        ),
      ),
    );
  }
}
