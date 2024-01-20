import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/utils.dart';
import 'package:mhe/employee/customtext.dart';
import 'package:mhe/mhecontroller.dart';

class detail extends StatefulWidget {
  const detail({super.key});

  @override
  State<detail> createState() => _detailState();
}

class _detailState extends State<detail> {
final controller=Get.put(mhecontroller());

  @override
  Widget build(BuildContext context) {
    return Scaffold( appBar: AppBar(elevation: 0,toolbarHeight: 70,backgroundColor: Colors.transparent,title: Text("تفاصيل الموظفين",style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold),),centerTitle: true,flexibleSpace: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(27),bottomRight: Radius.circular(27)),
        gradient: LinearGradient(colors: [
        
        Color.fromARGB(255, 85, 66, 248),
          Color.fromARGB(255, 122, 134, 247),
          Color.fromARGB(255, 186, 109, 250),
          Color.fromARGB(255, 188, 50, 252),
        ],transform: GradientRotation(30))
        
        ),)),
       
      body:     Column(
        children: [
        
          Padding(
                padding: const EdgeInsets.only(right: 20,left: 20,top: 40,bottom: 40),
                child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
               border: Border.all(width: 1,color: Color.fromARGB(255, 144, 3, 127),),
                 gradient: LinearGradient(colors: [
            
            Color.fromARGB(255, 198, 204, 255),
              Color.fromARGB(255, 227, 228, 255),
              Color.fromARGB(255, 209, 215, 255),
            ],transform: GradientRotation(30))
                ),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10,left: 10,bottom: 20),
                    child: Column( children: [SizedBox(height: MediaQuery.of(context).size.height*1/20,),
                        Row(mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                          customtext(text: "${controller.detail['name']}", color: Color.fromARGB(255, 0, 0, 0)),
                          SizedBox(width: 10,),
                          customtext(text: ": الاسم",color: Colors.red,)],),

                          SizedBox(height: MediaQuery.of(context).size.height*1/9,),


                           Row(mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                          customtext(text: "${controller.detail['phone']}", color: Colors.black),
                          SizedBox(width: 10,),
                          customtext(text: ": رقم الهاتف ",color: Colors.red,)],),
                          
                           SizedBox(height: MediaQuery.of(context).size.height*1/9,),


                          Align(alignment: Alignment.centerRight,
                            child: customtext(text: ": التفاصيل ",color: Colors.red,)),
                            SizedBox(height: 10,),
                           customtext(text: "${controller.detail['details']}", color: Colors.black),


                                             
                          
                    ]
                    
          
                     ),
                  ),
                ),
          ),

         Align(alignment: Alignment.center,
          child: Text("إن هذه المعلومات يمكن تعديلها من هنا",style: TextStyle(fontSize: 18),)),
             Align(alignment: Alignment.center,
          child: Text("تعديل الآن",style: TextStyle(fontSize: 19,color: Color.fromARGB(255, 0, 34, 255),),))
        ],
      )  );
        
  }
}