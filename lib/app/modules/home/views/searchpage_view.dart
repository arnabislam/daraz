import 'package:flutter/material.dart';

import 'package:get/get.dart';

class SearchpageView extends GetView {
  const SearchpageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Container(
          width: double.infinity,
          height: 40,
          decoration: const BoxDecoration(
            color: Colors.white,
          ),

          child: Center(

            child: TextField(
              decoration: InputDecoration(
                  hintText: 'Name',
                  border: InputBorder.none,
                  prefixIcon: const Icon(Icons.search),
                  suffixIcon: IconButton(
                      onPressed: () {}, icon: const Icon(Icons.clear))),
            ),
          ),),),);



  }
}
