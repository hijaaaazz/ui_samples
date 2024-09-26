import 'package:flutter/material.dart';
import 'package:ui_samples/screens/screen1.dart';
import 'package:ui_samples/screens/screen2.dart';
import 'package:ui_samples/screens/screen3.dart';
import 'package:ui_samples/screens/screen4.dart';
import 'package:ui_samples/screens/screen5.dart';
import 'package:ui_samples/screens/screen6.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    Color containerclr= Colors.blue.shade700;

    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue.shade700,
        title: const Text("Dukaan Premium"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 10,),
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 7),
             child: Row(
              children: [Expanded(child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const Screen1()));
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: containerclr,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  height: 100,
                  child: const Center(child: Text("1",style: TextStyle(color: Colors.white),)),
                             
                ),
              )),
              const SizedBox(width: 15,),

              Expanded(child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const Screen2()));
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: containerclr,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  height: 100,
                  child: const Center(child: Text("2",style: TextStyle(color: Colors.white),)),
                             
                ),
              )),

              ],
             ),
           ),
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 7),
             child: Row(
              children: [Expanded(child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const Screen3()));
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: containerclr,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  height: 100,
                  child: const Center(child: Text("3",style: TextStyle(color: Colors.white),)),
                             
                ),
              )),
              const SizedBox(width: 15,),

              Expanded(child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const Screen4()));
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: containerclr,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  height: 100,
                  child: const Center(child: Text("4",style: TextStyle(color: Colors.white),)),
                             
                ),
              )),

              ],
             ),
           ),
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 7),
             child: Row(
              children: [Expanded(child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const Screen5()));
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: containerclr,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  height: 100,
                  child: const Center(child: Text("5",style: TextStyle(color: Colors.white),)),
                             
                ),
              )),
              const SizedBox(width: 15,),

              Expanded(child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const Screen6()));
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: containerclr,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  height: 100,
                  child: const Center(child: Text("6",style: TextStyle(color: Colors.white),)),
                             
                ),
              )),

              ],
             ),
           ),
          ],
        ),
      ),
    );
  }
}