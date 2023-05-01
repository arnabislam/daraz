import 'package:daraz/app/modules/home/views/messageview_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class CartviewView extends GetView {
  const CartviewView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        elevation: 0,
        leading: IconButton(
            onPressed: () {}, icon: Icon(Icons.keyboard_backspace_outlined),
        ),

        // leading: Padding(
        //   padding: const EdgeInsets.only(top: 22.0),
        //   child: Text(
        //     "MyCart",
        //     style: TextStyle(color: Colors.black54),
        //   ),
        // ),
        //
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search)),
          IconButton(onPressed: (){}, icon: Icon(Icons.add_shopping_cart)),

        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          height: 120,
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            child: Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 88,
                      child: AspectRatio(
                        aspectRatio: 0.88,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xFFF5F6F9),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Image.asset('images/perfume.jpg'),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 140.0,
                              child: Text(
                                "Wireless Controller for PS4",
                                //style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              "\$Price",
                              style: TextStyle(color: Colors.orange),
                              maxLines: 1,
                            )
                          ],
                        ),
                        SizedBox(
                          width: 65,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Get.to(MessageviewView());
                          },
                          child: Text("Add to cart"),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class PlusMinusButtons extends StatelessWidget {
  final VoidCallback deleteQuantity;
  final VoidCallback addQuantity;
  final String text;
  const PlusMinusButtons(
      {Key? key,
      required this.addQuantity,
      required this.deleteQuantity,
      required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(onPressed: deleteQuantity, icon: const Icon(Icons.remove)),
        Text(text),
        IconButton(onPressed: addQuantity, icon: const Icon(Icons.add)),
      ],
    );
  }
}
