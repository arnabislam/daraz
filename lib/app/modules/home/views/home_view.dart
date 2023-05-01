import 'package:carousel_slider/carousel_slider.dart';
import 'package:daraz/app/modules/home/views/cartview_view.dart';
import 'package:daraz/app/modules/home/views/messageview_view.dart';
import 'package:daraz/app/modules/home/views/profileview_view.dart';
import 'package:daraz/app/modules/home/views/searchpage_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List pages = [
      HomeView(),
      MessageviewView(),
      CartviewView(),
      ProfileviewView(),
    ];
    int currentIndex = 0;
    void onTap(int index) {
      currentIndex = index;
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        elevation: 0,
        leading: IconButton(
            onPressed: () {}, icon: Icon(Icons.document_scanner_rounded)),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.currency_bitcoin)),
          IconButton(onPressed: () {}, icon: Icon(Icons.download)),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
          selectedItemColor: Colors.orange,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.grey,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.message, color: Colors.grey), label: "Message"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart, color: Colors.grey),
              label: "Cart"),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.grey),
            label: "Account",
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(children: [
            Stack(
              clipBehavior: Clip.none, alignment: Alignment.bottomCenter,

              children: [

                CarouselSlider(
                  items: [
                    Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/messi.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/true.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/ronaldo.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    // Align(
                    //     alignment: Alignment.topRight,
                    //     child: IconButton(
                    //       onPressed: () {
                    //         // Use the controller to change the current page
                    //       },
                    //       icon: Icon(Icons.arrow_forward),
                    //     ))
                  ],
                  options: CarouselOptions(
                    height: 230.0,
                    autoPlay: true,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    viewportFraction: 0.8,
                  ),
                ),
                Positioned(
                  bottom: -15,
                    child: Card(
                  child: Text(
                    "jsdhfvkawEUJYVFWLUKYAERFGVW",
                    style: TextStyle(fontSize: 18),
                  ),
                ))
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 5, top: 2),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 8, right: 8, top: 8),
                        child: GestureDetector(
                          onTap: () {
                            Get.to(MessageviewView());
                          },
                          child: Image(
                            image: AssetImage('images/true.png'),
                            height: 80,
                            width: 70,
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                      ),
                      Text("   Free\nDelivery")
                    ],
                  ),
                ),
                SizedBox(
                  width: 2,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8, right: 8),
                      child: GestureDetector(
                        onTap: () {
                          Get.to(CartviewView());
                        },
                        child: Image(
                          image: AssetImage('images/mart.png'),
                          height: 80,
                          width: 70,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                    Text("Mart")
                  ],
                ),
                SizedBox(
                  width: 2,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
                      child: Image(
                        image: AssetImage('images/fashion.png'),
                        height: 80,
                        width: 70,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    Text("Fashion")
                  ],
                ),
                SizedBox(
                  width: 2,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
                      child: Image(
                        image: AssetImage('images/beauty.png'),
                        height: 80,
                        width: 70,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    Text("Beauty &\nGlamour "),
                  ],
                ),
                SizedBox(
                  width: 2,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8, right: 8),
                      child: Image(
                        image: AssetImage('images/home.png'),
                        height: 80,
                        width: 70,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    Text("Home &\n Living")
                  ],
                ),
              ],
            ),
            ClipRRect(
                borderRadius: BorderRadius.circular(25.0),
                child: Image(
                    width: 400,
                    height: 320,
                    image: AssetImage('images/rrr.jpg'))),
            Container(
              height: 25,
              width: double.infinity,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Categories",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  SizedBox(
                    width: 230,
                  ),
                  Text(
                    "VIEW MORE>",
                    style: TextStyle(color: Colors.orange, fontSize: 18),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                        height: 150,
                        width: 110,
                        color: Colors.white,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Expanded(
                                child: Column(
                                  children: [
                                    Container(
                                      width: 100,
                                      height: 120,
                                      child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          child: Image(
                                            image:
                                                AssetImage('images/penty.jpg'),
                                          )),
                                    ),
                                    Text("Penty")
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        height: 150,
                        width: 110,
                        color: Colors.white,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Expanded(
                                child: Column(
                                  children: [
                                    Container(
                                      width: 100,
                                      height: 120,
                                      child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          child: Image(
                                            image: AssetImage('images/bra.jpg'),
                                          )),
                                    ),
                                    Text("Bra")
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 8),
                  Column(
                    children: [
                      Container(
                        height: 150,
                        width: 110,
                        color: Colors.white,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Expanded(
                                child: Column(
                                  children: [
                                    Container(
                                      width: 100,
                                      height: 120,
                                      child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          child: Image(
                                            image:
                                                AssetImage('images/phone.jpg'),
                                          )),
                                    ),
                                    Text("Phone")
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        height: 150,
                        width: 110,
                        color: Colors.white,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Expanded(
                                child: Column(
                                  children: [
                                    Container(
                                      width: 100,
                                      height: 120,
                                      child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          child: Image(
                                            image: AssetImage(
                                                'images/monitor.jpg'),
                                          )),
                                    ),
                                    Text("Monitor")
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 8),
                  Column(
                    children: [
                      Container(
                        height: 150,
                        width: 110,
                        color: Colors.white,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Expanded(
                                child: Column(
                                  children: [
                                    Container(
                                      width: 100,
                                      height: 120,
                                      child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          child: Image(
                                            image:
                                                AssetImage('images/sari.jpg'),
                                          )),
                                    ),
                                    Text("Wallet")
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        height: 150,
                        width: 110,
                        color: Colors.white,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Expanded(
                                child: Column(
                                  children: [
                                    Container(
                                      width: 100,
                                      height: 120,
                                      child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          child: Image(
                                            image:
                                                AssetImage('images/wallet.jpg'),
                                          )),
                                    ),
                                    Text("Sari")
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 8),
                  Column(
                    children: [
                      Container(
                        height: 150,
                        width: 110,
                        color: Colors.white,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Expanded(
                                child: Column(
                                  children: [
                                    Container(
                                      width: 100,
                                      height: 120,
                                      child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          child: Image(
                                            image: AssetImage(
                                                'images/perfume.jpg'),
                                          )),
                                    ),
                                    Text("Perfume")
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        height: 150,
                        width: 110,
                        color: Colors.white,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Expanded(
                                child: Column(
                                  children: [
                                    Container(
                                      width: 100,
                                      height: 120,
                                      child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          child: Image(
                                            image:
                                                AssetImage('images/remote.jpg'),
                                          )),
                                    ),
                                    Text("Remote")
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 8),
                  Column(
                    children: [
                      Container(
                        height: 150,
                        width: 110,
                        color: Colors.white,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Expanded(
                                child: Column(
                                  children: [
                                    Container(
                                      width: 100,
                                      height: 120,
                                      child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          child: Image(
                                            image: AssetImage('images/bra.jpg'),
                                          )),
                                    ),
                                    Text("Bra")
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        height: 150,
                        width: 110,
                        color: Colors.white,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Expanded(
                                child: Column(
                                  children: [
                                    Container(
                                      width: 100,
                                      height: 120,
                                      child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          child: Image(
                                            image:
                                                AssetImage('images/penty.jpg'),
                                          )),
                                    ),
                                    Text("Penty")
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 8),
                  Column(
                    children: [
                      Container(
                        height: 150,
                        width: 110,
                        color: Colors.white,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Expanded(
                                child: Column(
                                  children: [
                                    Container(
                                      width: 100,
                                      height: 120,
                                      child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          child: Image(
                                            image: AssetImage(
                                                'images/perfume.jpg'),
                                          )),
                                    ),
                                    Text("Perfume")
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        height: 150,
                        width: 110,
                        color: Colors.white,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Expanded(
                                child: Column(
                                  children: [
                                    Container(
                                      width: 100,
                                      height: 120,
                                      child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          child: Image(
                                            image: AssetImage(
                                                'images/threepiece.jpg'),
                                          )),
                                    ),
                                    Text("ThreePiece")
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 8),
                  Column(
                    children: [
                      Container(
                        height: 150,
                        width: 110,
                        color: Colors.white,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Expanded(
                                child: Column(
                                  children: [
                                    Container(
                                      width: 100,
                                      height: 120,
                                      child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          child: Image(
                                            image: AssetImage(
                                                'images/monitor.jpg'),
                                          )),
                                    ),
                                    Text("Monitor")
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        height: 150,
                        width: 110,
                        color: Colors.white,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Expanded(
                                child: Column(
                                  children: [
                                    Container(
                                      width: 100,
                                      height: 120,
                                      child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          child: Image(
                                            image:
                                                AssetImage('images/remote.jpg'),
                                          )),
                                    ),
                                    Text("Remote")
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ]),
          // Container(
          //   height: 40,
          //   width: 450,
          //   child: Card(
          //     color: Colors.white,
          //     elevation: 5,
          //     child: Row(
          //       mainAxisAlignment: MainAxisAlignment.spaceAround,
          //       children: [
          //         Icon(
          //           Icons.location_on_outlined,
          //           color: Colors.orange,
          //         ),
          //         Text("set your delivery location dfhfkmuhglokgyuil")
          //       ],
          //     ),
          //     shape: RoundedRectangleBorder(
          //       borderRadius: BorderRadius.circular(10.0),
          //     ),
          //   ),
          // ),
        ),
      ),
    );
  }
}
// appBar: AppBar(
// leading: Icon(Icons.document_scanner_rounded),
// backgroundColor: Colors.red,
// actions: [
// Row(
// children: [
// SizedBox(
// height: 45,
// width: 320,
// child: ElevatedButton.icon(
// style: ElevatedButton.styleFrom(
// backgroundColor: Colors.white,
// alignment: Alignment.centerLeft),
// onPressed: () {
// Get.to(SearchpageView());
// },
// icon: Icon(
// Icons.search,
// color: Colors.grey,
// ),
// label: Text(
// 'hanger',
// style: TextStyle(color: Colors.grey),
// )),
// ),
// SizedBox(
// width: 15,
// ),
// GestureDetector(onTap: (){
// Get.to(CartviewView());
// },
// child: Icon(Icons.add_circle)),
// SizedBox(
// width: 15,
// ),
// Icon(Icons.token_outlined),
// ],
// ),
// ]),
