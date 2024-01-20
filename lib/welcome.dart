

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:mhe/home.dart';
import 'package:mhe/mhecontroller.dart';
import 'package:mhe/secur.dart';
import 'package:mhe/secur2.dart';

class welcome extends StatefulWidget {
  const welcome({super.key});

  @override
  State<welcome> createState() => _welcomeState();
}

class _welcomeState extends State<welcome> {
final controller=Get.put(mhecontroller());
@override
void initState() {
    // TODO: implement initState
    super.initState();
     controller.securview();
    Timer(Duration(seconds: 3), (){
 
    controller.passstate=="1"?Get.off(secur2()):  Get.off(home());
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container(decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/s.jpg"),fit: BoxFit.fill
   , 
    filterQuality: FilterQuality.high,
    colorFilter: ColorFilter.mode(Color.fromARGB(197, 2, 2, 2), BlendMode.darken)
    )),
    child: Center(child: Container(height: 250,
      child: Column(
        children: [
          Text("مؤسسة الاسكان العسكرية",style: TextStyle(color: Colors.white,fontSize: 27,fontWeight: FontWeight.bold),),
         Text("معمل القرميد",style: TextStyle(color: Colors.white,fontSize: 26,fontWeight: FontWeight.bold),),
         SizedBox(height: 30,),
          LottieBuilder.asset("assets/lottie/tahmil.json",width: 200,),
        ],
      ),
    )),
    ),
    
    );
   
  }
}