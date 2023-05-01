import 'package:flutter/material.dart';

import 'package:get/get.dart';

class MessageviewView extends GetView {
  const MessageviewView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: Column(
        children: [
          Container(
            height: 235,
            color: Colors.red,
            child: Padding(
              padding: const EdgeInsets.only(left: 20, top: 80),
              child: Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('images/perfume.jpg'),
                        radius: 25,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        children: [
                          Text(
                            "01628993275",
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            "Saiful Islam Arnab",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    height: 45,
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            Column(
                              children: [
                                Text(
                                  "0",
                                  style: TextStyle(color: Colors.white),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  "My Wishlist",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Column(
                          children: [
                            Text(
                              "0",
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              "Followed Store",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Column(
                          children: [
                            Text(
                              "0",
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              "Vouchers",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          // Container(
          //   height: 140,
          //   width: double.infinity,
          //
          //   decoration: BoxDecoration(
          //     image: Image.asset('images/banner.png'),
          //       color: Colors.green,
          //       borderRadius: BorderRadius.all(Radius.circular(10))
          //
          //   ),
          // ),

          Container(
            color: Colors.red,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(25.0),
                child: Image(
                    width: double.infinity,
                    height: 140,
                    image: AssetImage('images/banner.png'))),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            height: 170,
            width: double.infinity,
            color: Colors.white,
            child: Column(
              children: [
                Container(
                  height: 30,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Text(
                          "My Orders",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Text("View All >",
                            style: TextStyle(color: Colors.orange)),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 60,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 28.0),
                            child: Icon(
                              Icons.radio,
                              size: 34,
                            ),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 25.0),
                            child: GestureDetector(
                              onTap: (){
                                showDialog<String>(
                                    context: context,
                                    builder: (BuildContext context) => AlertDialog(
                                      content: Container(
                                        width: 350,
                                        padding: const EdgeInsets.all(5.0),
                                        margin: const EdgeInsets.only(left: 10.0),
                                        child: Column(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Row(
                                              children: [
                                                const Text(
                                                  "Editor",
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.bold),
                                                ),
                                                const SizedBox(
                                                  width: 230,
                                                ),
                                                IconButton(
                                                  onPressed: () {},
                                                  icon: const Icon(
                                                      Icons.more_vert_rounded),
                                                )
                                              ],
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              children: const [
                                                Padding(padding: EdgeInsets.all(17)),
                                                Text(
                                                  "Link",
                                                  style: TextStyle(fontSize: 15),
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                TextField(
                                                  decoration: InputDecoration(
                                                    fillColor: Colors.white70,
                                                    filled: true,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              children: const [
                                                Padding(padding: EdgeInsets.all(17)),
                                                Text(
                                                  "Name",
                                                  style: TextStyle(fontSize: 15),
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                TextField(
                                                  decoration: InputDecoration(
                                                    fillColor: Colors.white70,
                                                    filled: true,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 30,
                                            ),
                                            Row(
                                              children: [
                                                TextButton(
                                                  onPressed: () {
                                                    Get.to(const MessageviewView());
                                                  },
                                                  child: const Center(
                                                      child: Text(
                                                        "Change",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 15),
                                                      )),
                                                ),
                                                const SizedBox(
                                                  width: 110,
                                                ),
                                                TextButton(
                                                  onPressed: () {
                                                    Get.back();
                                                  },
                                                  child: const Center(
                                                      child: Text(
                                                        "Cancel",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 10),
                                                      )),
                                                ),
                                                const SizedBox(
                                                  width: 25,
                                                ),
                                                TextButton(
                                                  onPressed: () {

                                                  },
                                                  child: const Center(
                                                      child: Text(
                                                        "Start",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 10),
                                                      )),
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ));
                              },
                              child: Text(
                                "To Pay",
                                style: TextStyle(color: Colors.black54),
                              ),
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.local_shipping_outlined,
                            size: 34,
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Text(
                              "To Ship",
                              style: TextStyle(color: Colors.black54),
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.local_shipping_outlined,
                            size: 34,
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Text(
                              "To Receive",
                              style: TextStyle(color: Colors.black54),
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 12.0),
                            child: Icon(
                              Icons.reviews_outlined,
                              size: 34,
                            ),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 10.0, right: 25),
                            child: Text(
                              "To Review",
                              style: TextStyle(color: Colors.black54),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, top: 25, right: 25, bottom: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.assignment_return_outlined,
                            size: 25,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text("My Returns")
                        ],
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.free_cancellation_sharp,
                            size: 25,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text("My Cancelletions")
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 5,),
          Container(
            height: 80,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Coins"),
                ),Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Earn/Redeem",style: TextStyle(color: Colors.orange),),
                )
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            height: 200,
            width: double.infinity,
            color: Colors.white,
            child: Column(
              children: [
                Container(
                  height: 30,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Text(
                          "My Services",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),

                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 60,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 28.0),
                            child: Icon(
                              Icons.message_outlined,
                              size: 34,
                            ),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 25.0),
                            child: Text(
                              "My Messages",
                              style: TextStyle(color: Colors.black54),
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.payment_outlined,
                            size: 34,
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0,),
                            child: Text(
                              "Payment ",
                              style: TextStyle(color: Colors.black54),
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.help_outline_rounded,
                            size: 34,
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Text(
                              "Help Center",
                              style: TextStyle(color: Colors.black54),
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 12.0),
                            child: Icon(
                              Icons.chat_rounded,
                              size: 34,
                            ),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Padding(
                            padding:
                            const EdgeInsets.only(left: 10.0, right: 25),
                            child: Text(
                              "Chat with Us",
                              style: TextStyle(color: Colors.black54),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0,right: 8,top: 8,bottom: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(

                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 12.0),
                            child: Icon(
                              Icons.reviews_outlined,
                              size: 34,
                            ),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Padding(
                            padding:
                            const EdgeInsets.only(left: 10.0, right: 25),
                            child: Text(
                              "To Review",
                              style: TextStyle(color: Colors.black54),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
