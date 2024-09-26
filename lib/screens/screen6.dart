import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_samples/models/model6.dart';

class Screen6 extends StatefulWidget {
  const Screen6({super.key});

  @override
  State<Screen6> createState() => _Screen6State();
}

class _Screen6State extends State<Screen6> with SingleTickerProviderStateMixin {
  late TabController controller;

  List<bool> switchValues = List.generate(productList.length, (index) => false); // Maintain switch state

  List<Widget> options = [];

  @override
  void initState() {
    super.initState();

    options = [
      SafeArea(
        child: Container(
          color: const Color.fromARGB(255, 221, 221, 221),
          child: ListView.builder(
            itemCount: productList.length,
            itemBuilder: (context, index) {
              final product = productList[index];

              return Padding(
                padding: const EdgeInsets.only(top: 15,right: 15,left: 15 ),
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
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(
                                  color: Colors.black26,
                                  width: 0.5
                                )
                              ),
                              width: 80,
                              height: 80,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(5),
                                child: Image.asset(product.imagePath)),
                            ),
                            const SizedBox(width: 10),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      SizedBox(
                                        width: 150,
                                        child: Text(
                                          product.name,
                                          style: const TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16,
                                          ),
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 1,
                                        ),
                                      ),
                                      const Icon(Icons.more_vert),
                                    ],
                                  ),
                                  const Text("1 Piece"),
                                  Text("₹${product.price}",
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(
                                    height: 20,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text(
                                          "In Stock",
                                          style: TextStyle(color: Colors.green),
                                        ),
                                        StatefulBuilder(
                                          builder: (BuildContext context,
                                              StateSetter setStateSwitch) {
                                            return Transform.scale(
                                              scale: 0.8,
                                              child: CupertinoSwitch(
                                                value: switchValues[index], // Bind the current value
                                                activeColor: Colors.blue,
                                                onChanged: (bool value) {
                                                  setStateSwitch(() {
                                                    switchValues[index] = value; // Update just this switch
                                                  });
                                                },
                                              ),
                                            );
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const Divider(),
                        const Row(
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
      const Center(child: Text("NO DATA")),
    ];

    controller = TabController(length: 2, vsync: this); // Set to 2 for Products and Categories
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        centerTitle: true,
        title: const Text("Catalogue"),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(Icons.search),
          )
        ],
        bottom: TabBar(
          indicatorSize: TabBarIndicatorSize.tab,
          indicatorColor: Colors.white,
          unselectedLabelStyle: const TextStyle(color: Color.fromARGB(134, 255, 255, 255)),
          labelStyle: const TextStyle(color: Colors.white),
          controller: controller, // Set the controller for TabBar
          tabs: const [
            Tab(text: "Products"),
            Tab(text: "Categories"),
          ],
        ),
      ),
      body: TabBarView(
        controller: controller, // Set the controller for TabBarView
        children: options,
      ),
    );
  }
}
