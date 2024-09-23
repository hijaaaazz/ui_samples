import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_samples/models/model6.dart';

class Screen6 extends StatefulWidget {
  Screen6({super.key});

  @override
  State<Screen6> createState() => _Screen6State();
}

class _Screen6State extends State<Screen6> with SingleTickerProviderStateMixin {
  late TabController controller;

  List<bool> switchValues = List.generate(productList.length, (index) => false); // Maintain switch state

  List<Widget> Options = [];

  @override
  void initState() {
    super.initState();

    Options = [
      SafeArea(
        child: Container(
          color: Colors.grey,
          child: ListView.builder(
            itemCount: productList.length,
            itemBuilder: (context, index) {
              final product = productList[index];

              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8)),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 80,
                              height: 80,
                              child: Image.asset(product.imagePath),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        child: Text(
                                          product.name,
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 1,
                                        ),
                                      ),
                                      Icon(Icons.more_vert),
                                    ],
                                  ),
                                  Text("1 Piece"),
                                  Text(product.price),
                                  Container(
                                    height: 20,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("In Stock"),
                                        Transform.scale(
                                          scale: 0.8,
                                          child: CupertinoSwitch(
                                            value: switchValues[index],
                                            activeColor: Colors.blue,
                                            onChanged: (value) {
                                              setState(() {
                                                switchValues[index] = value;
                                              });
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.share_outlined),
                            SizedBox(width: 15),
                            Text("Share Product")
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
      Center(child: Text("NO DATA")),
    ];

    controller = TabController(length: Options.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        centerTitle: true,
        title: Text("Catalogue"),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(Icons.search),
          )
        ],
        bottom: TabBar(
          indicatorSize: TabBarIndicatorSize.tab,
          indicatorColor: Colors.white,
          unselectedLabelStyle:
              TextStyle(color: const Color.fromARGB(134, 255, 255, 255)),
          labelStyle: TextStyle(color: Colors.white),
          controller: controller, // Set the controller for TabBar
          tabs: [
            Tab(
              text: "Products",
            ),
            Tab(
              text: "Categories",
            )
          ],
        ),
      ),
      body: TabBarView(
        controller: controller, // Set the controller for TabBarView
        children: Options,
      ),
    );
  }
}
