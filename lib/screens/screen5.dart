import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Screen5 extends StatelessWidget {
  const Screen5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        centerTitle: true,
        title: const Text("Order #1688068"),
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: const Icon(Icons.arrow_back)),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("May 31, 05:42 PM"),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          width: 10,
                          height: 10,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.blue,
                          ),
                        ),
                        const SizedBox(width: 4),
                        const Text("Delivered"),
                      ],
                    ),
                  ],
                ),
                const Divider(),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("1 ITEM", style: TextStyle(
                      color: Colors.grey
                    ),),
                    Row(
                      children: [
                        Icon(Icons.receipt_long_outlined, color: Colors.blue),
                        SizedBox(width: 4),
                        Text(
                          "RECEIPT",
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.asset(
                          "assets/t_shirt3.jpeg",
                          width: 50,
                          height: 50,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Explore | Men | Navy Blue",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400
                          ),),
                          const Text("1 piece"),
                          const Text("Size: XL", style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w600
                          )),
                          const SizedBox(width: double.infinity, height: 6,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 20,
                                    height: 20,
                                    decoration: BoxDecoration(
                                      color: const Color.fromARGB(255, 225, 246, 255),
                                      border: Border.all(color: Colors.blue),
                                      borderRadius: BorderRadius.circular(3),
                                    ),
                                    child: const Center(
                                      child: Text(
                                        "1",
                                        style: TextStyle(color: Colors.blue),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 4),
                                  const Text(" x"),
                                  const Text(" ₹799"),
                                ],
                              ),
                              const Text("₹799"),
                            ],
                          ),
                          const SizedBox(width: double.infinity, height: 8),
                        ],
                      ),
                    ),
                  ],
                ),
                const Divider(),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Item Total"),
                    Text("₹799"),
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Delivery"),
                    Text("FREE",
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.w400
                    ),),
                  ],
                ),
                const SizedBox(height: 5, width: double.infinity,),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Grand Total",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                    ),),
                    Text("₹799",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                    )),
                  ],
                ),
                const Divider(),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("CUSTOMER DETAILS", style: TextStyle(
                      color: Colors.grey
                    ),),
                    Row(
                      children: [
                        Icon(Icons.share_outlined, size: 20, color: Colors.blue,),
                        Text("   SHARE",
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w600
                        ),),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12,
                  width: double.infinity,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Deepa",
                        style: TextStyle(
                          fontWeight: FontWeight.w600
                        ),),
                        Text("+91-786956362515"),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.blue,
                              width: 3,
                            ),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: const Icon(
                            Icons.call,
                            size: 20,
                            color: Colors.blue,
                          ),
                        ),
                        const SizedBox(width: 10),
                        const SizedBox(
                          width: 30,
                          height: 30,
                          child: FaIcon(
                            FontAwesomeIcons.whatsapp,
                            size: 30,
                            color: Colors.green,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  width: double.infinity, height: 10,
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Address",
                    style: TextStyle(
                      fontWeight: FontWeight.w600
                    ),),
                    SizedBox(
                      width: 180,
                      child: Text("D 1101 Charted Beverly Hills, Subhramanyapura P.O")),
                  ],
                ),
                const SizedBox(width: double.infinity, height: 15),
                Column(
                  children: [
                    const Row(
                      children: [
                        Expanded(
                          child: SizedBox(
                            height: 60,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("City",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600
                                ),),
                                Text("Bangalore")
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: SizedBox(
                            height: 60,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Pincode", style: TextStyle(
                                  fontWeight: FontWeight.w600
                                ),),
                                Text("560061")
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Expanded(
                          child: SizedBox(
                            height: 60,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Payment", style: TextStyle(
                                  fontWeight: FontWeight.w600
                                ),),
                                Text("Online")
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: SizedBox(
                            height: 60,
                            child: Stack(
                              children: [
                                Positioned(
                                  right: 0,
                                  bottom: 10,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: const Color.fromARGB(64, 0, 255, 42),
                                      borderRadius: BorderRadius.circular(3),
                                    ),
                                    width: 50,
                                    height: 20,
                                    child: const Center(
                                      child: Text(
                                        "PAID",
                                        style: TextStyle(
                                          color: Color.fromARGB(255, 0, 153, 5),
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const Divider(),
                const Text("ADDITIONAL INFORMATION", style: TextStyle(
                  color: Colors.grey
                ),),
                const SizedBox(width: double.infinity, height: 10,),
                const Text("State", style: TextStyle(
                  fontWeight: FontWeight.w600
                ),),
                const Text("Karnataka"),
                const SizedBox(width: double.infinity, height: 10,),
                const Text("Email", style: TextStyle(
                  fontWeight: FontWeight.w600
                ),),
                const Text("greeniniceaqua@gmail.com"),
                const SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () {
                    },
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: const BorderSide(
                          color: Colors.blue,
                          width: 1
                        )
                      ),
                      backgroundColor: const Color.fromARGB(0, 255, 255, 255),
                      padding: const EdgeInsets.symmetric(vertical: 10),
                    ),
                    child: const Text(
                      "Share receipt",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}