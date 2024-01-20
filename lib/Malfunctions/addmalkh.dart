import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:mhe/customtf.dart';
import 'package:mhe/Malfunctions/malfunctions.dart';

class AddErrorkh extends StatelessWidget {
   AddErrorkh({super.key});
TextEditingController x=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      backgroundColor: Color.fromARGB(255, 121, 121, 121),
    body: 
         Column(
           children: [
            SizedBox(height: 250,width: double.infinity,child: Container(width: double.infinity,
              decoration: BoxDecoration(image:DecorationImage(image: AssetImage("assets/images/kh.jpg",),fit: BoxFit.cover)),
             child:Padding(
               padding: const EdgeInsets.only(top: 40,left: 20),
               child: Align(alignment: Alignment.topLeft,child: 
               Container(
                child: InkWell(onTap: (){Get.off(Errorm());},child: Icon(Icons.arrow_back))
                ,width: 35,height: 35,decoration: BoxDecoration(shape: BoxShape.circle,color: Color.fromARGB(255, 255, 255, 255)),)),
             )
              ),),
             Expanded(
               child: SingleChildScrollView(
                 child: Container(width:double.infinity ,height: 650,

                    decoration: BoxDecoration(border: Border.all(width: 2,color: Colors.black),
                      gradient: LinearGradient(colors: [
                                
                  /*Color.fromARGB(255, 219, 215, 253),
                    Color.fromARGB(255, 212, 216, 248),
                    Color.fromARGB(255, 212, 216, 248),
                    Color.fromARGB(255, 224, 220, 252),*/
                    Color.fromARGB(255, 223, 222, 222),
                    Color.fromARGB(255, 224, 224, 224),
                    Color.fromARGB(255, 216, 215, 215),
                   
                          ],transform: GradientRotation(90)),
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(23),topRight: Radius.circular(23))),
                    child: Column(
                      children: [
                        SizedBox(height: 20,),
                      Row(
                        children: [
                          customtf(hint: "نوع العطل", controller:x, icon: Icon(Icons.car_repair)),
Padding(
                                     padding: const EdgeInsets.only(right: 10),
                                     child: Text(" : نوع العطل",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                   )
                        ],
                      ),
                      SizedBox(height: 20,),
                     Padding(
                                     padding: const EdgeInsets.only(right: 10),
                                     child:Align(alignment: Alignment.centerRight,
                                      child: Text(" : وصف العطل",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
                                   ),
                         Padding(
                           padding: const EdgeInsets.all(8.0),
                          
                             child: TextFormField(maxLines: 8,maxLength: 100,
                              decoration:InputDecoration(fillColor: Color.fromARGB(255, 255, 255, 255),filled: true,
                              hintText: "أضف وصف للعطل ",
                              hintTextDirection: TextDirection.rtl,
                                
                                border: OutlineInputBorder(
                                
                                borderRadius: BorderRadius.circular(23)))),
                           
                         ),
                      //   SizedBox(height: 5,),
                         
                      
                          Padding(
                            padding: const EdgeInsets.only(right: 13),
                            child: Container(width: 150,height: 60,
                            child:Row(mainAxisAlignment: MainAxisAlignment.center,children: [Icon(Icons.image),Text("أضف صورة",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)],),
                        
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),
                              gradient: LinearGradient(colors: [
                                Color.fromARGB(255, 226, 226, 226),
          Color.fromARGB(255, 107, 106, 106),
         // Color.fromARGB(255, 186, 109, 250),
          Color.fromARGB(255, 199, 199, 199),
                              ],transform:GradientRotation(30))),),
                          ),

SizedBox(height: 10,),

                             Padding(
                            padding: const EdgeInsets.only(right: 13),
                            child: Container(width: 100,height: 100,
                            child:Column(mainAxisAlignment: MainAxisAlignment.center,
                            children: [Text("احفظ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.white),),
                            Text("الآن",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.white),),
                            Icon(Icons.upload,color: Colors.white,)],),
                        
                              decoration: BoxDecoration(shape: BoxShape.circle,
                              gradient: LinearGradient(colors: [
                                Color.fromARGB(255, 11, 177, 5),
          Color.fromARGB(255, 24, 184, 2),
         // Color.fromARGB(255, 186, 109, 250),
          Color.fromARGB(255, 3, 192, 51),
                              ],transform:GradientRotation(30))),),
                          ),
                       
                      
                      ],
                    )),
               ),
             ),
           ],
         ),
      
          
      
    
   );
  }
}