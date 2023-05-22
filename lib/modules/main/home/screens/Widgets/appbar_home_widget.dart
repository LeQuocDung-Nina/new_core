import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../../utils/helpers.dart';
import '../../../cart/cart_layout.dart';



class AppbarHomeWidget extends ConsumerWidget {
  const AppbarHomeWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: EdgeInsets.zero,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(flex: 1,
            child: Row(
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage('assets/images/avata.png'),
                  backgroundColor: Colors.white,
                  radius: 20,
                ),
                const SizedBox(width: 8,),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const[
                      Text("Good Morning",style: TextStyle(color: Colors.white,fontSize: 13),),
                      SizedBox(height: 4,),
                      Text("Lê Quốc Dũng",style: TextStyle(color: Colors.white,fontSize: 20),),
                    ],
                  ),
                ),

              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(right: 0),
            child: Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                onTap: () {

                  context.pushNamed(Helpers.convertName(const CartLayout().key),
                      extra: {'type': "new-screen"});
                },
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    const Icon(Icons.add_shopping_cart,color: Colors.white),

                    Positioned(
                      right: -3,
                      top: -3,
                      child: Container(
                        width: 18,
                        height: 18,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(18)),
                        child:  const Align(
                          alignment: Alignment.center,
                          child: Text('1',style: TextStyle(fontSize: 10,color: Colors.black),),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
