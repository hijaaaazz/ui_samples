import 'package:flutter/material.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 0, 81, 147),
        foregroundColor: Colors.white,
        title:  const Text("Manage Store",style:TextStyle(fontSize: 20)),
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: const Icon(Icons.arrow_back)),
      ),
      body: SafeArea(

        child: 
      Container(
        color:const Color.fromARGB(255, 238, 236, 236),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: GridView.count( 
            crossAxisCount: 2,
            childAspectRatio: 3/2.2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10
            
          , 
            children:  [
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6)
                ),
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15 , top: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:[ Container(
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(6)
                      ),
                      
                      height: 40,
                      width: 40,
                      child: const Icon(Icons.volume_up_sharp ,color: Colors.white ,),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 8),
                      child: SizedBox(
                        width: 100,
                        child: Text("Marketing Design",style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500
                        ),),
                      ),
                    )
                    ]
                  ),
                   
                )
                
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6)
                ),
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15 , top: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:[ Container(
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 0, 255, 0),
                        borderRadius: BorderRadius.circular(6)
                      ),
                      
                      height: 40,
                      width: 40,
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: const Color.fromARGB(255, 17, 255, 0),
                            border: Border.all(
                              color: Colors.white,
                              width: 2
                            )
                          ),
                          
                          child: const Icon(Icons.currency_rupee_sharp,size:15,color: Colors.white,)),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 8),
                      child: SizedBox(
                        

                        width: 100,
                        child: Text("Marketing Design",style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500
                        ),),
                      ),
                    )
                    ]
                  ),
                   
                )
                
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6)
                ),
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15 , top: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:[ 
                      Container(
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 239, 170, 72),
                        borderRadius: BorderRadius.circular(6)
                      ),
                      
                      height: 40,
                      width: 40,
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: const Color.fromARGB(0, 17, 255, 0),
                            border: Border.all(
                              color: Colors.white,
                              width: 2
                            )
                          ),
                          
                          child: const Icon(Icons.percent,size: 15,color: Colors.white,)),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 8),
                      child: SizedBox(
                        width: 100,
                        child: Text("Discount Coupons",style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500
                        ),),
                      ),
                    )
                    ]
                  ),
                   
                )
                
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6)
                ),
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15 , top: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:[ Container(
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 28, 176, 166),
                        borderRadius: BorderRadius.circular(6)
                      ),
                      
                      height: 40,
                      width: 40,
                      child: const Icon(Icons.people_alt_sharp,color: Colors.white,),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 8),
                      child: SizedBox(
                        width: 100,
                        child: Text("My Customers",style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500
                        ),),
                      ),
                    )
                    ]
                  ),
                   
                )
                
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6)
                ),
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15 , top: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:[ Container(
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 108, 108, 108),
                        borderRadius: BorderRadius.circular(6)
                      ),
                      
                      height: 40,
                      width: 40,
                      child: const Icon(Icons.qr_code_scanner ,color: Colors.white,),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 8),
                      child: SizedBox(
                        width: 100,
                        child: Text("Store QR Code",style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500
                        ),),
                      ),
                    )
                    ]
                  ),
                   
                )
                
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6)
                ),
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15 , top: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:[ Container(
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 133, 22, 174),
                        borderRadius: BorderRadius.circular(6)
                      ),
                      
                      height: 40,
                      width: 40,
                      child: const Icon(Icons.payments, color:Colors.white,),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 8),
                      child: SizedBox(
                        width: 100,
                        child: Text("Extra  Charges",style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500
                        ),),
                      ),
                    )
                    ]
                  ),
                   
                )
                
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6)
                ),
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15 , top: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:[ Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 164, 66, 141),
                            borderRadius: BorderRadius.circular(6)
                          ),
                          
                          height: 40,
                          width: 40,
                          child: const Icon(Icons.format_align_left_outlined,color: Colors.white,),
                        ),
                        Padding(
                          padding:  const EdgeInsets.only(left: 55),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3),
                              color: const Color.fromARGB(255, 0, 214, 7),
                            ),
                            height: 20,
                            width: 35,
                            child: const Center(child: Text("NEW",style: TextStyle(fontSize: 10,color: Colors.white),)),
                          
                            
                          ),
                        )
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 8),
                      child: SizedBox(
                        width: 100,
                        child: Text("Order       Form",style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500
                        ),),
                      ),
                    )
                    ]
                  ),
                   
                )
                
              ),
             
              
            ],),
        ),
      )
      
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: const Color.fromARGB(255, 0, 94, 171),
        unselectedItemColor: const Color.fromARGB(255, 179, 179, 179),
        showUnselectedLabels: true,
        currentIndex: 3,
        onTap:(newIndex){
        },
      items:  const [
        BottomNavigationBarItem(icon: Icon(Icons.home_outlined),label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_outlined),label: "Orders"),
         BottomNavigationBarItem(icon: Icon(Icons.grid_view_outlined),label: "Products"),
          BottomNavigationBarItem(icon: Icon(Icons.settings),label: "Manage"),
           BottomNavigationBarItem(icon: Icon(Icons.person_2_outlined),label: "Account")
      
      ]),
      
    );
  }
}