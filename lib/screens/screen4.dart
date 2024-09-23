import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class Screen4 extends StatefulWidget {
  const Screen4({super.key});

  @override
  State<Screen4> createState() => _Screen4State();
}

class _Screen4State extends State<Screen4> {

  bool _isFirstQuestionExpanded = false;
  bool _isSecondQuestionExpanded = false;
  bool _isThirdQuestionExpanded = false;  
  bool _is4QuestionExpanded = false;
  bool _is5QuestionExpanded = false;
  bool _is6QuestionExpanded = false;  
  TextStyle faqhead = TextStyle(fontWeight: FontWeight.w500 ,color: const Color.fromARGB(255, 94, 94, 94));


  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue.shade700,
        leading: Icon(Icons.arrow_back),
        title: Text("Dukaan Premium"),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Stack(
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 100,
                          width: double.infinity,
                          color: Colors.blue.shade700,
                        ),
                        Container(
                          width: double.infinity,
                          height: 150,
                          color: Colors.white,
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: const Color.fromARGB(43, 0, 0, 0),
                              spreadRadius: 1,
                              blurRadius: 1,
                              offset: Offset(0, 1),
                            ),
                          ],
                          borderRadius: BorderRadius.circular(10),
                          color: const Color.fromARGB(255, 255, 255, 255),
                        ),
                        width: double.infinity,
                        height: 220,
                        child: Padding(
                          padding: const EdgeInsets.all(25),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 50,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: Colors.blue.shade700,
                                    ),
                                    child: Icon(
                                      Icons.shopify_sharp,
                                      size: 40,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Container(
                                    child: Container(
                                      height: 48,
                                      child: Stack(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(right: 12),
                                            child: Text(
                                              "dukaan",
                                              style: TextStyle(
                                                fontSize: 30,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            right: 0,
                                            child: Text(
                                              "®",
                                              style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            bottom: 0,
                                            right: 12,
                                            child: Text(
                                              "PREMIUM",
                                              style: TextStyle(
                                                color: Colors.blue.shade600,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w800,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 20),
                              Container(
                                alignment: Alignment.center,
                                width: 270,
                                child: Text(
                                  "Get Dukaan Premium for just ₹4,999/year",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              SizedBox(height: 8),
                              Container(
                                width: 280,
                                child: Text(
                                  "All the advanced features for scaling your business.",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.black54,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Features",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(60),
                            border: Border.all(
                              width: 2,
                              color: Colors.blue.shade400,
                            ),
                          ),
                          child: Icon(
                            FontAwesomeIcons.globe,
                            color: Colors.blue.shade600,
                          ),
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Custom domain name", style: TextStyle(fontWeight: FontWeight.w600)),
                            Container(
                              width: 250,
                              child: Text(
                                "Get your own custom domain and build your brand on the internet",
                                style: TextStyle(color: Colors.black54, fontSize: 13),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(60),
                            border: Border.all(
                              width: 2,
                              color: Colors.blue.shade400,
                            ),
                          ),
                          child: Icon(
                            Icons.verified_outlined,
                            color: Colors.blue.shade600,
                          ),
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Verified seller badge", style: TextStyle(fontWeight: FontWeight.w600)),
                            Container(
                              width: 250,
                              child: Text(
                                "Get your own verified seller badge to enhance credibility.",
                                style: TextStyle(color: Colors.black54, fontSize: 13),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(60),
                            border: Border.all(
                              width: 2,
                              color: Colors.blue.shade400,
                            ),
                          ),
                          child: Icon(
                            Icons.computer,
                            color: Colors.blue.shade600,
                          ),
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Dukaan for PC", style: TextStyle(fontWeight: FontWeight.w600)),
                            Container(
                              width: 250,
                              child: Text(
                                "Access all Dukaan features on your PC for better productivity.",
                                style: TextStyle(color: Colors.black54, fontSize: 13),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(60),
                            border: Border.all(
                              width: 2,
                              color: Colors.blue.shade400,
                            ),
                          ),
                          child: Icon(
                            Icons.support_agent_outlined,
                            color: Colors.blue.shade600,
                          ),
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Priority support", style: TextStyle(fontWeight: FontWeight.w600)),
                            Container(
                              width: 250,
                              child: Text(
                                "Get priority support for faster issue resolution.",
                                style: TextStyle(color: Colors.black54, fontSize: 13),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              ),
              Divider(),
              Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("What is Dukaan Premium",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                    ),),
                    SizedBox(height: 10),
                    Container(
                       decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color.fromARGB(255, 209, 157, 0),
                            ),
                            height: 200,
                            width: double.infinity,
                      child: Stack(
                        children: [
                          // Asset Image in the background
                          Container(
                           height: 200,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                "assets/dukaan.jpg",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color.fromARGB(26, 0, 0, 0),
                            ),
                            height: 200,
                            width: double.infinity,
                          ),
                          // Centering the Network Image
                          Center(
                            child: Container(
                              width: 100,
                              child: ClipRRect(
                                child: Image.network(
                                  "https://upload.wikimedia.org/wikipedia/commons/e/ef/Youtube_logo.png?20220706172052",
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Frequently Asked Questions",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18
                    ),),
                    SizedBox(height: 20),
                     Row(
                      children: [
                        Container(
                          width: 272,
                          child: Text("What type of businesses can use Dukaan Premium?",style: faqhead,),
                        ),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              _isFirstQuestionExpanded = !_isFirstQuestionExpanded;
                            });
                          },
                          icon: Icon(
                            _isFirstQuestionExpanded ? Icons.remove : Icons.add
                          ),
                        ),
                      ],
                    ),
                    if (_isFirstQuestionExpanded)
                      Container(
                        padding: EdgeInsets.all(10),
                        
                        child: Text(
                          "Dukaan Caters to a wide variety of sellers. Be it a small groccery store or a big legacy brand- anyone who wants to sell their products/services online - Dukaan is the perfect platform to you. ",
                        ),
                      ),
                      Divider(),
                      Row(
                      children: [
                        Expanded(
                          child: Text("What is yor refund policy?",style: faqhead,),
                        ),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              _isSecondQuestionExpanded = !_isSecondQuestionExpanded;
                            });
                          },
                          icon: Icon(
                            _isSecondQuestionExpanded ? Icons.remove : Icons.add,
                          ),
                        ),
                      ],
                    ),
                    if (_isSecondQuestionExpanded)
                      Container(
                        padding: EdgeInsets.all(10),
                        
                        child: Text(
                          " "
                        ),
                      ),
                      Divider(),
                      Row(
                      children: [
                        Container(
                          width: 272,
                          child: Text("Will there be an automatic charge after the paid trial?",style: faqhead,),
                        ),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              _isThirdQuestionExpanded = !_isThirdQuestionExpanded;
                            });
                          },
                          icon: Icon(
                            _isThirdQuestionExpanded ? Icons.remove : Icons.add,
                          ),
                        ),
                      ],
                    ),
                    if (_isThirdQuestionExpanded)
                      Container(
                        padding: EdgeInsets.all(10),
                        
                        child: Text(
                            " "),
                      ),
                      Divider(),
                      Row(
                      children: [
                        Expanded(
                          child: Text("What payment methords do you offer?",style: faqhead,),
                        ),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              _is4QuestionExpanded = !_is4QuestionExpanded;
                            });
                          },
                          icon: Icon(
                            _is4QuestionExpanded ? Icons.remove : Icons.add,
                          ),
                        ),
                      ],
                    ),
                    if (_is4QuestionExpanded)
                      Container(
                        padding: EdgeInsets.all(10),
                        
                        child: Text(
                        " "),
                      ),
                      Divider(),
                      Row(
                      children: [
                        Expanded(
                          child: Text("What happens when my free trial ends?",style: faqhead),
                        ),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              _is5QuestionExpanded = !_is5QuestionExpanded;
                            });
                          },
                          icon: Icon(
                            _is5QuestionExpanded ? Icons.remove : Icons.add,
                          ),
                        ),
                      ],
                    ),
                    if (_is5QuestionExpanded)
                      Container(
                        padding: EdgeInsets.all(10),
                        
                        child: Text(
                        ""
                        ),
                      ),
                      Divider(),

                      Row(
                      children: [
                        Expanded(
                          child: Text("What are the terms for the customs domain?",style: faqhead,),
                        ),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              _is6QuestionExpanded = !_is6QuestionExpanded;
                            });
                          },
                          icon: Icon(
                            _is6QuestionExpanded ? Icons.remove : Icons.add,
                          ),
                        ),
                      ],
                    ),
                    if (_is6QuestionExpanded)
                      Container(
                        padding: EdgeInsets.all(10),
                        
                        child: Text(
                          ""
                        ),
                      ),
                      Divider()
                  ],
                ),
              ),
              Divider(
                thickness: 6,
                color: Colors.black12,
              ),
              Padding(
                padding: const EdgeInsets.all(20 ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Need help? Get in touch",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18
                    ),),
                    SizedBox(height: 10,),
                    Row(
                      children: [Expanded
                      (child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black12,width: 1),
                          borderRadius: BorderRadius.circular(5)
                          ),
                        height: 100,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.chat_bubble_outline),
                            SizedBox(height: 3),
                            Text("Live Chat",
                            style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.w500
                            ),)
                          ],
                        ),
                      )),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                          border: Border.all(color: Colors.black12,width: 1),
                          borderRadius: BorderRadius.circular(5)
                          ),
                          height: 100,
                          child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.phone),
                            SizedBox(height: 3),
                            Text("Phone Call",
                            style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.w500
                            ),)
                          ],
                        ),
                        ),
                      )
                      ],
                    )
                  ],
                ),
              ),
              Divider(
                color: Colors.black12,
                thickness: 3,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:
                  [TextButton(onPressed: (){}, child: Text("Select Domain",style: TextStyle(
                    fontSize: 16,
                    color: Color.fromARGB(255, 0, 123, 224),
                    fontWeight: FontWeight.bold
                  ),)),
                  SizedBox(width: 10,),
                  TextButton(
                    onPressed: () {
                    },
                    style: TextButton.styleFrom(
                      foregroundColor: const Color.fromARGB(255, 255, 255, 255),
                      padding: EdgeInsets.symmetric(horizontal:47,vertical: 15),
                      backgroundColor: const Color.fromARGB(255, 0, 123, 224),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                    ),
                    child: Text('Get Premium',
                    style: TextStyle(
                      fontSize: 16
                    ),),
                  )
                  ],
                ),
              )
              
            ],
          ),
        ),
      ),
    );
  }
}
