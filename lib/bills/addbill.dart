
import 'dart:ui';

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/circular_reveal_clipper.dart';
import 'package:get/get_navigation/src/routes/default_transitions.dart';
import 'package:marquee/marquee.dart';

import 'package:mhe/bills/allbill.dart';
import 'package:mhe/link.dart';
import 'package:mhe/mhecontroller.dart';

import '../customtf.dart';

class AddFatora extends StatefulWidget {
  const AddFatora({super.key});

  @override
  State<AddFatora> createState() => _AddFatoraState();
}

class _AddFatoraState extends State<AddFatora> {
  TextEditingController username=TextEditingController();
  TextEditingController phone=TextEditingController();
  TextEditingController quan=TextEditingController();
  TextEditingController price=TextEditingController();
   final controller=Get.put(mhecontroller());

  DateTime x =DateTime.now();
   
   var selec;

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(


        backgroundColor: Color.fromARGB(255, 243, 243, 243),
      appBar: AppBar(elevation: 0,toolbarHeight: 70,backgroundColor: Colors.transparent,title: Text("الفواتير",style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold),),centerTitle: true,flexibleSpace: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(27),bottomRight: Radius.circular(27)),
        gradient: LinearGradient(colors: [
        
        Color.fromARGB(255, 85, 66, 248),
          Color.fromARGB(255, 122, 134, 247),
          Color.fromARGB(255, 186, 109, 250),
          Color.fromARGB(255, 188, 50, 252),
        ],transform: GradientRotation(30))
        
        ),)),
        body:
       SingleChildScrollView(
          child: Column(

            children: [
           
               SizedBox(height: 20,),
 
Container(color: Color.fromARGB(255, 190, 196, 250),
  height: 30, // تحديد ارتفاع الصندوق
  child:Marquee(text: ".. يمكنك إضافة فواتيرك الآن من هنا و التعديل عليها متى تريد",
  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
  blankSpace: 20,
  velocity: -100,
  startAfter: Duration(milliseconds: 100),)
),

              
              SizedBox(height: MediaQuery.of(context).size.height*1/33),
              Padding(
                padding: const EdgeInsets.only(left: 10,right: 10),
                child: Container(decoration: BoxDecoration(
                  border: Border.all(width: 1,color: Colors.black)
                  ,borderRadius: BorderRadius.all(Radius.circular(20)),gradient: LinearGradient(colors: [
                      
        Color.fromARGB(255, 219, 215, 253),
          Color.fromARGB(255, 212, 216, 248),
          Color.fromARGB(255, 212, 216, 248),
          Color.fromARGB(255, 224, 220, 252),
         
                ],transform: GradientRotation(90))),
                  child: Column(children: [
      
                      
                      SizedBox(height: MediaQuery.of(context).size.height*1/45),
         
         Row( children: [
                         customtf(
                          icon: Icon(Icons.insert_chart),
                         
                         hint: ":أدخل الاسم الثلاثي", controller: username),Padding(
                           padding: const EdgeInsets.only(right: 10),
                           child: Text(":أسم التاجر",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                         )
                        ],
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height*1/140),
                       Row( children: [
                        
                         customtf(
                          icon: Icon(Icons.phone),
                         
                         hint:"**********09", controller: phone),Padding(
                           padding: const EdgeInsets.only(right: 10),
                           child: Text(":رقم الهاتف",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                         )
                        ],
                        
                      ),
                       
                      SizedBox(height:MediaQuery.of(context).size.height*1/140),
                       Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                     
                         Padding(
                           padding: const EdgeInsets.only(left: 48,right: 10),
                           child: Container(width: MediaQuery.of(context).size.width*1/2.5,
                           height: MediaQuery.of(context).size.height*1/18,

                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(23),color: Color.fromARGB(255, 255, 255, 255)),
                            child:  Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                               IconButton(icon:Icon(Icons.date_range,color: Color.fromARGB(255, 175, 0, 0),) ,onPressed: ()async{

                                DateTime? z =await showDatePicker(context: context, 
                                  initialDate: x, 
                                  firstDate: DateTime(2023),
                                   lastDate: DateTime(2025));
                           setState(() {
                              if(z==null) return;
                            else {x=z;}
                           });
                          
                        },),
                        Text("${x.year}/${x.month}/${x.day}",style: TextStyle(fontSize: 16,color: Colors.black),)
                            ],)
                            
                            ),
                         ),
                         
                         Padding(
                           padding: const EdgeInsets.only(right: 10),
                           child: Text(":تاريخ الفاتورة",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                         )
                        ],
                        
                      ),
                       // SizedBox(height: 40,),
                      //  Text("______________________________________________",style: TextStyle(fontWeight: FontWeight.bold),),
      SizedBox(height: MediaQuery.of(context).size.height*1/35),
  Padding(
    padding: const EdgeInsets.only(right: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [Container(width: MediaQuery.of(context).size.width*1/2.4,
      height: MediaQuery.of(context).size.height*1/18,
      child:  Padding(
                      padding: const EdgeInsets.only(right: 10,left: 20),
      
                        child: TextFormField(
                       
                       keyboardType: TextInputType.number,
                       textAlignVertical: TextAlignVertical.bottom,
                            controller: quan,
                            decoration: InputDecoration(
                            fillColor: Color.fromARGB(255, 255, 255, 255),filled: true,
                            hintText: "100-kg",hintTextDirection:TextDirection.rtl ,border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(14)
                          
                          ))),
                          
                          ),
                        
                      ),
    ),
       
                         Text(":الكمية الإجمالية",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                       
      ]),
  ),
    SizedBox(height:MediaQuery.of(context).size.height*1/30),
                      

  Padding(
    padding: const EdgeInsets.only(right: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Container(width:MediaQuery.of(context).size.width*1/2.6,
                        decoration: BoxDecoration(border: Border.all(width: 2,),borderRadius: BorderRadius.all(Radius.circular(23)),
                        color: Color.fromARGB(255, 204, 204, 204)
                          ),
                               child: Align(alignment: Alignment.topRight,
                                 child: DropdownButton(hint: Text("اختر نوع القرميد",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                                 style: TextStyle(fontSize: 18,color: Color.fromARGB(255, 247, 7, 7),fontWeight: FontWeight.bold),
                                 dropdownColor: Color.fromARGB(255, 219, 219, 219),
                                 items: ["قرميد افران كبير" ,"قرميد افران","قرميد أسطحة","قرميد فرنسي"].map((e) => DropdownMenuItem(child: Align(alignment: Alignment.center,child: Text("$e")),value: e,)).toList(), onChanged: (val){setState(() {
                                   selec=val.toString();
                                 });},value: selec,
                                focusColor: Colors.red,autofocus: true,
                        borderRadius: BorderRadius.all(Radius.circular(23)),
 ),
                               ),
                             ),
                      ),
                           Text(":  نوع القرميد",style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold,) ,)
      ],
    ),
  ),
  SizedBox(height:MediaQuery.of(context).size.height*1/30),
Padding(
    padding: const EdgeInsets.only(right: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [Container(width: MediaQuery.of(context).size.width*1/2.4,
      height: MediaQuery.of(context).size.height*1/18,
      child:  Padding(
                      padding: const EdgeInsets.only(right: 10,left: 20),
      
                        child: TextFormField(
                          controller: price,
                          decoration: InputDecoration(
                          fillColor: Color.fromARGB(255, 255, 255, 255),filled: true,
                          border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(14)
                        
                        ))),
                        
                        ),
                      ),
      ),
       
                         Text(": السعر الإجمالي",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                       
      ]),
  ),
  
  SizedBox(height: MediaQuery.of(context).size.height*1/20),

         

  
 
                    ],),
                ),
              ),
              SizedBox(height:MediaQuery.of(context).size.height*1/18),
            Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        width: MediaQuery.of(context).size.width*1/2.7,
        height: MediaQuery.of(context).size.height*1/16.5,
        decoration:BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),
 gradient: LinearGradient( colors: [Color.fromARGB(255, 80, 79, 80),
 Color.fromARGB(255, 122, 122, 122),
 Color.fromARGB(255, 83, 83, 83)],
 transform: GradientRotation(20)
 )
 
 ),
      
        
       
                   child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.search,color: Colors.white,),
                        TextButton(onPressed: (){
                      
                         Get.to(AllFatora());
                      
                       
                        },child: Text("جميع الفواتير",style: TextStyle(fontWeight:FontWeight.bold,fontSize: MediaQuery.of(context).size.width*1/20,
                        color: Color.fromARGB(255, 255, 255, 255)),),),
                      ],
        ),
      ),
      SizedBox(width: 18,),
    
      Container(
              width: MediaQuery.of(context).size.width*1/2.7,
        height: MediaQuery.of(context).size.height*1/16.5,
        decoration:BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10),),
 color: Color.fromARGB(255, 41, 241, 41)),
      
        
       
                   child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.newspaper),
                        TextButton(onPressed: ()async{
                        
                 await controller.addfatora(username.text, phone.text, x.toString(), quan.text, selec, price.text);
                AwesomeDialog(context: context,title: "تم بنجاح",dialogType: DialogType.success,
                desc: "تم إضافة فاتورة جديدة بنجاح",
                 btnCancelOnPress: () {},
            btnOkOnPress: () {},
              animType: AnimType.rightSlide,)..show();
                      
                            
    
    },child: Text("أضف فاتورة",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 20,color: Colors.black),),),
                      ],
        ),
      ),
    

       
   ],
  ),
 
            ],
          ),
        

        
        
       )
        
    );
  }
  }
