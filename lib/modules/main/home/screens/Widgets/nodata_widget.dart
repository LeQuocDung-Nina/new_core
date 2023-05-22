

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NoData extends ConsumerWidget {
  const NoData({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Align(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/dulieurong.png"),
          const SizedBox(height: 16,),
          const Text("Không tìm thấy",style: TextStyle(color: Colors.black,fontSize: 20),),
        ],
      ),
    );
  }
}
