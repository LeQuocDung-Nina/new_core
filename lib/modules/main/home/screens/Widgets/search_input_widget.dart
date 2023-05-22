import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SearchInputWidget extends ConsumerWidget {
  const SearchInputWidget({Key? key}) : super(key: key);
  static final TextEditingController searchController = TextEditingController();

  // final String hint;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final TextStyle hintStyle = TextStyle(color: Colors.white, fontSize: 13);
    return SizedBox(
      height: 50,
      child: TextField(
        onTap: () {

        },
        controller: searchController,
        cursorColor: Colors.black,
        maxLines: 1,
        readOnly: true,
        style: const TextStyle(color: Colors.black),
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(width: 1, color: Colors.transparent),
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(width: 1, color: Colors.transparent),
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          hintText: "Tìm kiếm...",
          hintStyle: hintStyle,
          suffixIcon: Padding(padding:  EdgeInsets.all(11), child: Icon(Icons.search,size: 30,color: Colors.black,)),
          // prefixIcon: Padding(padding: const EdgeInsets.all(11), child:  Icon(Icons.search)),
          fillColor: Colors.white,
          contentPadding: const EdgeInsets.only(left: 20, right: 15),
        ),
      ),
    );
  }
}
