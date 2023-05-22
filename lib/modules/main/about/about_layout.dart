import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AboutLayout extends StatefulWidget {
  const AboutLayout({Key? key}) : super(key: const Key(pathName));

  static const String pathName = 'about';

  @override
  State<AboutLayout> createState() => _AboutLayoutState();
}

class _AboutLayoutState extends State<AboutLayout> {

  Future<String?> _getData({data}) async{
    // await Future.delayed(const Duration(seconds: 3));
    return (data!=null) ? data['name'] : '';
  }

  @override
  Widget build(BuildContext context) {

    // Sử dụng GoRouterState lấy queryParams
    print("queryParams: ${GoRouterState.of(context).queryParameters}");
    // final data = GoRouterState.of(context).queryParameters;

    // Sử dụng GoRouterState lấy params
    print("params: ${GoRouterState.of(context).pathParameters}");
    // final data = GoRouterState.of(context).pathParameters;

    // Sử dụng GoRouterState lấy extra
    print("extra: ${GoRouterState.of(context).extra}");
    final data = GoRouterState.of(context).extra;

    return Scaffold(
      body: FutureBuilder(
        future: _getData(data: data),
        builder: (context, snapshot) {
          if(snapshot.hasError){
            return Center(child: const Text('Có lỗi'),);
          }
          if(snapshot.hasData){
            final data = snapshot.data;
            return SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Đây là trang ${data}'),
                  const SizedBox(height: 10,),
                  ElevatedButton(onPressed: (){

                    // pushNamed với queryParams
                    context.pushNamed(AboutLayout.pathName, queryParameters: {"name":"vu manh cuong", 'age':'31', 'sex':'male'});

                    // pushNamed với params
                    // context.pushNamed(Helpers.convertName(const AboutLayout().key), pathParameters: {"name":"vu manh cuong"});

                  }, child: Text('Push About')),
                ],
              ),
            );
          }
          return const Center(child: CircularProgressIndicator.adaptive(),);
        },
      ),
    );
  }
}