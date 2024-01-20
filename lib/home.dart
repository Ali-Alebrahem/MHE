


import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/animation/animation_controller.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/ticker_provider.dart';
import 'package:get/get.dart';

import 'package:mhe/employee/employee.dart';
import 'package:mhe/production/production.dart';
import 'package:mhe/Malfunctions/malfunctions.dart';
import 'package:mhe/bills/addbill.dart';
import 'package:mhe/secur.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

int x=0;
class home extends StatefulWidget {
  
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home>
    with SingleTickerProviderStateMixin {
     List images=["assets/images/e.webp","assets/images/fa.webp","assets/images/mo.jpg","assets/images/s.jpg"];
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
       bottomNavigationBar: Padding(
      padding: const EdgeInsets.only(left: 20,right: 20,bottom: 40),
      child: Container(height: MediaQuery.of(context).size.height*1/12.5,
      
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [
            Container(width: 40,height: 40,
          decoration: BoxDecoration(shape: BoxShape.circle,color: Color.fromARGB(255, 77, 2, 96)),
          child: Icon(Icons.home,color: Colors.white,),),
           Container(width: 40,height: 40,
          decoration: BoxDecoration(shape: BoxShape.circle,color: Color.fromARGB(255, 77, 2, 96)),
          child: Icon(Icons.people,color: Colors.white,),),
            Container(width: 40,height: 40,
          decoration: BoxDecoration(shape: BoxShape.circle,color: Color.fromARGB(255, 77, 2, 96)),
          child:  Icon(Icons.card_travel,color: Colors.white),),
      ],),
            decoration: BoxDecoration(
             gradient:
               LinearGradient(colors: [
              Color.fromARGB(255, 106, 89, 250),
          Color.fromARGB(255, 142, 153, 247),
          Color.fromARGB(255, 199, 138, 249),
          Color.fromARGB(255, 200, 92, 250),
            ],transform:GradientRotation(20))
             
             ,borderRadius: BorderRadius.circular(20)),
         ),
    ),
      
      drawer: Container(
      width: 280,height: 800,
     
      child:Drawer(
          child: Column(children: [
            Container(width:280,height: 200,decoration: BoxDecoration(gradient: LinearGradient(colors: [
              Color.fromARGB(255, 85, 66, 248),
          Color.fromARGB(255, 122, 134, 247),
          Color.fromARGB(255, 186, 109, 250),
          Color.fromARGB(255, 188, 50, 252),
            ],transform:GradientRotation(20))),
            child: Padding(
              padding: const EdgeInsets.all(28.0),
              child: Container(width: 60,height: 60,decoration: BoxDecoration
              (image: DecorationImage(image: AssetImage("assets/images/ali.jpg"),fit: BoxFit.contain),shape: BoxShape.circle,color: Color.fromARGB(255, 255, 255, 255)),
),
            ),),
SizedBox(height: 30,),

             Padding(
               padding: const EdgeInsets.all(8.0),
               child: InkWell(onTap: (){Get.off(secur());},
                 child: Row(
                   children: [
                    Icon(Icons.lock,color: Color.fromARGB(255, 44, 44, 44),),
                    SizedBox(width: 7,),
                  Text("إضافة كلمة مرور الى التطبيق",style: TextStyle(fontSize: 17,color: Color.fromARGB(255, 0, 0, 0),fontWeight: FontWeight.bold),),
                   ],
                 ),
               ),
             ),
            SizedBox(height: 30,),



 Padding(
   padding: const EdgeInsets.all(8.0),
   child: InkWell(onTap: (){
   
   },
                 child: Row(
                   children: [
                    Icon(Icons.sunny_snowing),
                    SizedBox(width: 10,),
                  Text("الوضع الليلي",style: TextStyle(fontSize: 17,color: Colors.black,fontWeight: FontWeight.bold),),
                   ],
                 ),
               ),
 ),
            SizedBox(height: 30,),


              Text("التواصل مع المطور",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
      SizedBox(height: 10,),
 Row(mainAxisAlignment: MainAxisAlignment.center,
 
                    children: [
                      Container(width: 40,height: 40,decoration: BoxDecoration(shape: BoxShape.circle,color: Color.fromARGB(255, 23, 97, 5)),
                                child: Icon(Icons.whatsapp,color: Colors.white,size: 30,),),
                                SizedBox(width: 10,),
                                 Container(width: 40,height: 40,decoration: BoxDecoration(shape: BoxShape.circle,color: Color.fromARGB(255, 13, 50, 211)),
                            child: Icon(Icons.facebook_outlined,color: Colors.white,size: 30,),),
                                      SizedBox(width: 10,),
                           
                             Container(width: 40,height: 40,decoration: BoxDecoration(shape: BoxShape.circle,color: Color.fromARGB(255, 158, 34, 3)),
                            child: Icon(Icons.email,color: Colors.white,size: 30,),),
                    ],
                  
         
       ),
            
           
           
          ],)
        ),
      ),
    
  backgroundColor: Color.fromARGB(255, 247, 247, 247),appBar: AppBar(title: Text("معمل قرميد الأسطحة",style: TextStyle(fontSize: 25),),centerTitle: true,
    backgroundColor: Colors.transparent,
    flexibleSpace: Container(decoration: BoxDecoration(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(27),bottomRight: Radius.circular(27)),gradient: LinearGradient(colors: [
      Color.fromARGB(255, 85, 66, 248),
          Color.fromARGB(255, 122, 134, 247),
          Color.fromARGB(255, 186, 109, 250),
          Color.fromARGB(255, 188, 50, 252),
        ],transform: GradientRotation(30)))),
    elevation: 0,actions: [Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Container(decoration: BoxDecoration(shape: BoxShape.circle,color: Color.fromARGB(255, 226, 226, 226)),
        child: Icon(Icons.notifications,size: 30,color: Color.fromARGB(255, 223, 8, 8),)),
    )],


    toolbarHeight: 70//,shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25),bottomRight: Radius.circular(25))),
   ),

    
    body:ListView(children: [SizedBox(height:  MediaQuery.of(context).size.height*1/20,),CarouselSlider(items: [
 Padding(
          padding: const EdgeInsets.only(left: 10,right: 10,top: 5,bottom: 5),
          child: Container(width:double.infinity,height: 40,decoration: BoxDecoration(borderRadius: BorderRadius.circular(13),
          color: Color.fromARGB(255, 255, 255, 255),image: DecorationImage(image: AssetImage("assets/images/s.jpg"),fit: BoxFit.fill)
          ),),
        ),
         Padding(
          padding: const EdgeInsets.only(left: 10,right: 10,top: 5,bottom: 5),
          child: Container(width:double.infinity,height: 40,decoration: BoxDecoration(borderRadius: BorderRadius.circular(13),
          color: Color.fromARGB(255, 255, 255, 255),image: DecorationImage(image: AssetImage("assets/images/1.webp"),fit: BoxFit.fill,
          ),),
        ),),
         Padding(
          padding: const EdgeInsets.only(left: 10,right: 10,top: 5,bottom: 5),
          child: Container(width: double.infinity,height: 40,decoration: BoxDecoration(borderRadius: BorderRadius.circular(13),
          color: Color.fromARGB(255, 255, 255, 255),image: DecorationImage(image: AssetImage("assets/images/e.webp"),fit: BoxFit.fill
          ),),
        )),
    ], options:CarouselOptions(autoPlay: true,reverse: true,autoPlayAnimationDuration: Duration(seconds: 1),
    autoPlayInterval: Duration(seconds: 2),height: MediaQuery.of(context).size.height*1/5
    ,enlargeCenterPage: true,
    onPageChanged: (index, reason) => setState(() => x=index)
    
    ) ),
    SizedBox(height: 10,),

  Row(mainAxisAlignment: MainAxisAlignment.center,
  crossAxisAlignment: CrossAxisAlignment.center,
    children: [ Padding(
      padding: const EdgeInsets.only(right: 30),
      child: Container(width: 40,height: 20,decoration: BoxDecoration(
        color: Color.fromARGB(255, 59, 62, 252),
        borderRadius: BorderRadius.circular(23)),
        child: Center(child: Text("${x+1}/3",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
        ),
    ),
      AnimatedSmoothIndicator(activeIndex: x, count: 3,effect: WormEffect(dotColor: Color.fromARGB(255, 201, 200, 199),activeDotColor: Color.fromARGB(255, 59, 62, 252)),),
    ],
  ),
    
    SizedBox(height: MediaQuery.of(context).size.height*1/20),
    
  Padding(
    padding: const EdgeInsets.only(left: 70,right: 70),
    child: Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(17),color: Color.fromARGB(255, 218, 217, 217)),
   
      child: Column(children: [  Padding(
        padding: const EdgeInsets.only(left: 10,right: 10,top: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [Column(
            children: [

              InkWell(onTap: (){Get.to(Entag());},
                child: Container(height: MediaQuery.of(context).size.height*1/9.2,width:  MediaQuery.of(context).size.width*1/4.6,
                decoration: BoxDecoration( boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(255, 0, 0, 0).withOpacity(.3),
                      blurRadius: 10,
                      offset: Offset(10, 20),
                    ),
                  ],
                  border:Border.all(width: 3,color: Color.fromARGB(255, 142, 9, 166))
                  ,image: DecorationImage(fit: BoxFit.fill,image: AssetImage("${images[0]}")),borderRadius: BorderRadius.circular(25)),),
              ),
                SizedBox(height: 5,),
                Text("إنتاج المعمل",style: TextStyle(fontSize: 17,color: Colors.black,fontWeight: FontWeight.bold),)
            ],
          ),
          
          Column(
            children: [
              InkWell(onTap: () {
                Get.to(AddFatora());
              },
                child: Container(height: MediaQuery.of(context).size.height*1/9.2,width:  MediaQuery.of(context).size.width*1/4.6,
                decoration: BoxDecoration( boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(255, 104, 104, 104).withOpacity(.3),
                      blurRadius: 10,
                      offset: Offset(11, 30),
                    ),
                  ],
                    border:Border.all(width: 3,color: Color.fromARGB(255, 142, 9, 166))
                  ,image: DecorationImage(fit: BoxFit.cover,image: AssetImage("${images[1]}")),borderRadius: BorderRadius.circular(25))),
              ),
           SizedBox(height: 5,),
                Text("إضافة فاتورة",style: TextStyle(fontSize: 17,color: Colors.black,fontWeight: FontWeight.bold),)
          
            ],
          )
          
          ],),
      ),
      
      SizedBox(height:  MediaQuery.of(context).size.height*1/40,),
      Padding(
        padding: const EdgeInsets.only(left: 10,right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [Column(
            children: [

             InkWell(onTap: () {
               Get.to(Employee());
             },
                child: Container(height: MediaQuery.of(context).size.height*1/9.2,width:  MediaQuery.of(context).size.width*1/4.6,
                decoration: BoxDecoration( boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(255, 104, 104, 104).withOpacity(.3),
                      blurRadius: 10,
                      offset: Offset(11, 30),
                    ),
                  ],
                  border:Border.all(width: 3,color: Color.fromARGB(255, 142, 9, 166))
                  ,image: DecorationImage(fit: BoxFit.fill,image: AssetImage("${images[2]}")),borderRadius: BorderRadius.circular(25)),),
              ),
                SizedBox(height: 5,),
                Text("جدول الموظفين",style: TextStyle(fontSize: 17,color: Colors.black,fontWeight: FontWeight.bold),)
            ],
          ),
          Column(
            children: [
             InkWell(onTap: (){Get.to(Errorm());},
                child: Container(height: MediaQuery.of(context).size.height*1/9.2,width:  MediaQuery.of(context).size.width*1/4.6,
                decoration: BoxDecoration( boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(255, 104, 104, 104).withOpacity(.3),
                      blurRadius: 10,
                      offset: Offset(11, 30),
                    ),
                  ],
                    border:Border.all(width: 3,color: Color.fromARGB(255, 142, 9, 166))
                  ,image: DecorationImage(fit: BoxFit.cover,image: AssetImage("${images[3]}")),borderRadius: BorderRadius.circular(25))),
              ),
           SizedBox(height: 5,),
                Text("إدارة الأعطال",style: TextStyle(fontSize: 17,color: Colors.black,fontWeight: FontWeight.bold),)
          
            ],
          )
          
          ],),
      ),
      

      
      ],) ,
      
      
      
 ),
  )]));
  }
}
