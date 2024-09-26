import 'package:flutter/material.dart';
import 'package:ui_samples/models/model3.dart';

class Screen3 extends StatefulWidget {
  const Screen3({super.key});

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  bool isClicked = false;
  bool isClicked2 = true;
  bool isClicked3 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 0, 71, 130),
        title: const Center(child: Text("Payments")),
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: const Icon(Icons.arrow_back)),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(Icons.info_outline),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: const Color.fromARGB(146, 187, 187, 187),
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Transaction Limit",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 3),
                      const Text(
                        "A free limit up to which you will receive the online payments directly in your bank",
                      ),
                      const SizedBox(height: 15),
                      Container(
                        height: 7, 
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10), 
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: const LinearProgressIndicator(
                            backgroundColor: Color.fromARGB(255, 189, 189, 189), 
                            value: 0.3, 
                            color: Color.fromARGB(255, 0, 92, 167), 
                          ),
                        ),
                      ),
                      const Text("36,668 left out of ₹50,000"),
                      const SizedBox(height: 15),
                      SizedBox(
                        width: 140,
                        height: 35,
                        child: TextButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor: WidgetStateProperty.all<Color>(
                              const Color.fromARGB(255, 0, 101, 184),
                            ),
                            foregroundColor:
                                WidgetStateProperty.all<Color>(Colors.white),
                            shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                          ),
                          child: const Text("Increase Limit"),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Column(
                children: [
                 Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Default Method",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal, // Assuming this was the previous weight
                        ),
                      ),
                      Row(
                        children: [
                          DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                              value: 'Online Payment',
                              items: const [
                                DropdownMenuItem(
                                  value: 'Online Payment',
                                  child: Text(
                                    'Online Payment',
                                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
                                  ),
                                ),
                                DropdownMenuItem(
                                  value: 'Cash on Delivery',
                                  child: Text(
                                    'Cash on Delivery',
                                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
                                  ),
                                ),
                              ],
                              onChanged: (value) {
                                setState(() {
                                  // Handle selection change
                                });
                              },
                              icon: const Icon(
                                Icons.arrow_forward_ios_sharp , // Change to down arrow
                                size: 13,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),



                   Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Payment Profile",
                          style: TextStyle(fontSize: 16),
                        ),
                        Row(
                        children: [
                          DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                              value: 'Online Payment',
                              items: const [
                                DropdownMenuItem(
                                  value: 'Online Payment',
                                  child: Text(
                                    'Online Payment',
                                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
                                  ),
                                ),
                                DropdownMenuItem(
                                  value: 'Cash on Delivery',
                                  child: Text(
                                    'Cash on Delivery',
                                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
                                  ),
                                ),
                              ],
                              onChanged: (value) {
                                setState(() {
                                  // Handle selection change
                                });
                              },
                              icon: const Icon(
                                Icons.arrow_forward_ios_sharp , // Change to down arrow
                                size: 13,
                              ),
                            ),
                          ),
                        ],
                      ),
                      ],
                    ),
                  ),

                ],
              ),
              const Divider(thickness: 1, indent: 10, endIndent: 10),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Payment Overview",
                          style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),
                        ),
                        Row(
                        children: [
                          DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                              value: 'Life Time',
                              items:  const [
                                DropdownMenuItem(
                                  value: 'Life Time',
                                  child: Text(
                                    'Life time',
                                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
                                  ),
                                ),
                                DropdownMenuItem(
                                  value: 'Last Year',
                                  child: Text(
                                    'Last Year',
                                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
                                  ),
                                ),
                              ],
                              onChanged: (value) {
                                setState(() {
                                  // Handle selection change
                                });
                              },
                              icon: const Icon(
                                Icons.arrow_forward_ios_sharp , // Change to down arrow
                                size: 13,
                              ),
                            ),
                          ),
                        ],
                      ),
                      ],
                    ),
                  ),
                  const Row(
                    children: [
                      Expanded(
                        child: SizedBox(
                          height: 90,
                          child: Card(
                            color: Color.fromARGB(255, 201, 121, 0),
                            child: Padding(
                              padding: EdgeInsets.only(top: 15, left: 15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "AMOUNT ON HOLD",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                    ),
                                  ),
                                  Text(
                                    "₹0",
                                    style: TextStyle(
                                      fontSize: 23,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: SizedBox(
                          height: 90,
                          child: Card(
                            color: Color.fromARGB(255, 0, 125, 4),
                            child: Padding(
                              padding: EdgeInsets.only(top: 15, left: 15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "AMOUNT RECEIVED",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                    ),
                                  ),
                                  Text(
                                    "₹13,332",
                                    style: TextStyle(
                                      fontSize: 23,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 15),
              const Text("Transaction"),
              Row(
                children: [
                  Expanded(
                    child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: isClicked ? Colors.blue : const Color.fromARGB(123, 158, 158, 158),
                        foregroundColor: isClicked ? Colors.white : Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          isClicked = !isClicked;
                          isClicked2=false;
                          isClicked3=false; 
                        });
                      },
                      child: const Text("On Hold", style: TextStyle(fontSize: 12)),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: isClicked2 ? Colors.blue : const Color.fromARGB(123, 158, 158, 158),
                        foregroundColor: isClicked2 ? Colors.white : Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          isClicked2 = !isClicked2;
                          isClicked=false;
                          isClicked3=false;
                        });
                      },
                      child: const Text("Payouts (15)", style: TextStyle(fontSize: 12)),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: isClicked3 ? Colors.blue : const Color.fromARGB(123, 158, 158, 158),
                        foregroundColor: isClicked3 ? Colors.white : Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          isClicked3 = !isClicked3;
                          isClicked=false;
                          isClicked2=false;
                        });
                      },
                      child: const Text("Refunds", style: TextStyle(fontSize: 12)),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: orders.length,
                itemBuilder: (context, index) {
                  final order = orders[index];
                  return Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8.0),
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(3),
                                  child: Image.asset(
                                    order.imageUrl,
                                    width: 50,
                                    height: 50,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                const SizedBox(width:20),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Expanded(child: Text(order.orderId,
                                          style: const TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500
                                          ))),
                                          Text(order.price,style: const TextStyle(
                                            color: Colors.blue,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold
                                          ),),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(order.description,
                                          style: const TextStyle(
                                            fontSize: 13
                                          ),),
                                          Row(
                                            children: [
                                               Container(
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(10),
                                                   color: Colors.green,
                                                ),
                                                width: 10,
                                                height: 10,
                                              ),
                                              Text("  ${order.status}"),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(width: double.infinity,height: 6,),
                            Text(order.pdetails,
                            style: const TextStyle(
                              fontSize: 12,
                              fontStyle: FontStyle.italic
                            ),),
                          ],
                        ),
                      ),
                      if (index != orders.length - 1)
                        const Divider(
                          height: 3,
                          thickness: 1,
                          indent: 8,
                          endIndent: 8,
                        ),
                    ],
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}