
import 'dart:async';
import 'dart:io';
import 'dart:ui';

import 'package:lottie/lottie.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:marquee/marquee.dart';

import 'package:mhe/mhecontroller.dart';

class AllFatora extends StatefulWidget {
  const AllFatora({super.key});

  @override
  State<AllFatora> createState() => _AllFatoraState();
}



class _AllFatoraState extends State<AllFatora> {
final controller=Get.put(mhecontroller());


  @override
  void initState() {
    super.initState();
 
     controller.allfatora();
  
  }
  DateTime x=DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child:Obx(()=> Container(width:100,height: 50,child: ElevatedButton(onPressed: (){}, child: Text("حذف الكل",style: TextStyle
        (fontWeight: FontWeight.bold,fontSize: 17),),style: ButtonStyle(backgroundColor:MaterialStateColor.resolveWith((states)=>Colors.transparent) ),),
         color:controller.allfatorlist.isEmpty?Color.fromARGB(255, 169, 169, 169): Color.fromARGB(255, 172, 3, 3),),
      ),),
      
      backgroundColor: Color.fromARGB(255, 235, 235, 235),
       appBar: AppBar(elevation: 0,toolbarHeight: 70,backgroundColor: Colors.transparent,title: Text("جميع الفواتير",style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold),),centerTitle: true,flexibleSpace: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(27),bottomRight: Radius.circular(27)),
        gradient: LinearGradient(colors: [
        
        Color.fromARGB(255, 85, 66, 248),
          Color.fromARGB(255, 122, 134, 247),
          Color.fromARGB(255, 186, 109, 250),
          Color.fromARGB(255, 188, 50, 252),
        ],transform: GradientRotation(30))
        
        ),)),
      body: 
      
       Column(
         children: [SizedBox(height: 30,),
         
       Container(width: 280,height:80,
        child: Text("ابحث عن فواتيرك من هنا ما عليك سوى الضغط على أيقونة التقويم و اختيار التاريخ الذي تريد رؤية فواتيره",
        style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 31, 31, 31)),)),
           Row(mainAxisAlignment: MainAxisAlignment.spaceAround,children: [
            Container(decoration: BoxDecoration(shape: BoxShape.circle,
              gradient: LinearGradient(colors: [
        
        Color.fromARGB(255, 85, 66, 248),
          Color.fromARGB(255, 122, 134, 247),
          Color.fromARGB(255, 186, 109, 250),
          Color.fromARGB(255, 188, 50, 252),
        ],transform: GradientRotation(30))
            
            ),
            child: IconButton(icon: Icon(Icons.search,color: Colors.white,),onPressed: (()async {
            
               await  controller.searchbill(x.toString());
                if(controller.searchbilllist.isEmpty){
               AwesomeDialog(context: context,title: "لا يوجد فواتير لعرضها",dialogType: DialogType.warning,
                desc: " لا يوجد بهذا التاريخ فواتير مضافة سيتم إعادة عرض كل الفواتير",
                 animType: AnimType.rightSlide,
                  btnCancelOnPress: () {},
                  barrierColor: Color.fromARGB(192, 0, 0, 0)
            
                )..show();
                }
           
            }),),),
            Padding(
              
              padding: const EdgeInsets.only(left:0),
              child: Container(width: 250,height: 60,child: Center(child: Text("${x.year}/${x.month}/${x.day}"
             , style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
              )),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(18),color: Color.fromARGB(255, 206, 206, 206)
           ),),
            ),
            Container(
              decoration: BoxDecoration(shape: BoxShape.circle,
              gradient: LinearGradient(colors: [
        
        Color.fromARGB(255, 85, 66, 248),
          Color.fromARGB(255, 122, 134, 247),
          Color.fromARGB(255, 186, 109, 250),
          Color.fromARGB(255, 188, 50, 252),
        ],transform: GradientRotation(30))
         ),
              child: IconButton(onPressed: ()async{
              DateTime? z = await showDatePicker(context: context, 
                 initialDate: x,
                  firstDate: DateTime(2023),
                   lastDate: DateTime(2025));
                  setState(() {
                     if(z==null){return;}
                   else{x=z;}
                  });
              }, icon: Icon(Icons.date_range),iconSize: 40,color: Colors.white,))],),
          SizedBox(height: 30,),
           Expanded(
             child: Padding(padding: EdgeInsets.all(10),
    child:Obx(()=> controller.allfatorlist.isEmpty?Column(
      children: [
      LottieBuilder.asset("assets/lottie/fatora.json",
      width: MediaQuery.of(context).size.width*1/1,
      height: MediaQuery.of(context).size.height*1/3,),
     
        Text("لا يوجد فواتير لعرضها ",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),)
      ],
    ):(
       ListView.builder(itemBuilder:(context, index) {
        final list= controller.searchbilllist.isEmpty? controller.allfatorlist[index]:controller.searchbilllist[index];
         return  Row(
             children: [
              Expanded(
                 child: Padding(
                        padding: const EdgeInsets.only(bottom: 13,left: 10),
                        child: InkWell(onTap: (){setState(() {
                          controller.chcolor(index);
                       
                        
                        });},
                          child:Container(width: double.infinity,height: 130,
                            decoration: BoxDecoration(border: Border.all(width: 2,color: Colors.black),
                              borderRadius: BorderRadius.circular(22),
                                 gradient:controller.iid==index?  LinearGradient(colors: [
        
        Color.fromARGB(255, 194, 201, 255),
          Color.fromARGB(255, 194, 202, 253),
        ],transform: GradientRotation(30)):LinearGradient(colors: [
        
        Color.fromARGB(255, 222, 218, 255),
          Color.fromARGB(255, 229, 231, 248),
          Color.fromARGB(255, 241, 224, 255),
          Color.fromARGB(255, 249, 236, 255),
        ],transform: GradientRotation(30))
        
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Column(
                                  children: [
                                    SizedBox(height:20 ,width: 150,
                                    
                                      child:Marquee(blankSpace:40 ,
                                      velocity: -45,
                                        text: "${list['date']}" ,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red) ,)
                                    ),
                                    SizedBox(height: 10,),
                                    Row(mainAxisAlignment: MainAxisAlignment.spaceAround,children: [
                                     Text("${list['phone']}",style: TextStyle(fontWeight: FontWeight.bold),),  Text("${list['username']}",style: TextStyle(fontWeight: FontWeight.bold),),
                                    ],),
                                     Row(mainAxisAlignment: MainAxisAlignment.spaceAround,children: [
                                      Text("${list['type']}",style: TextStyle(fontWeight: FontWeight.bold),),
                                       Text("${list['quan']} Kg",style: TextStyle(fontWeight: FontWeight.bold),),
                                    ],),

                                     Text("${list['price']} ل.س",style: TextStyle(fontWeight: FontWeight.bold,color: Color.fromARGB(255, 2, 146, 7)),),
                                     
                                  ],
                                ),
                              ),
                              
                              ),
                        ),
                      
                    ),
               ),
                  Column(
                    children: [
                      IconButton(onPressed: (){

                     showDialog(context: context, builder:(context) {
                       return AlertDialog(
                              
                          backgroundColor: Color.fromARGB(255, 226, 226, 226),
                            title: Center(child: Text("حذف فاتورة",style: TextStyle(color: Color.fromARGB(255, 251, 8, 8),fontWeight: FontWeight.bold),)),
                            content: 
                           Text("هل تريد بالتأكيد حذف هذه الفاتورة في حال الموافقة اضغط حذف",style: TextStyle(color: Color.fromARGB(255, 0, 0, 0),fontWeight: FontWeight.bold),),
                           actions: [
                     Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(23),
                     color: Color.fromARGB(255, 33, 166, 243)),
                      child: TextButton(onPressed: (){
                          navigator!.pop(context);
                      },child: Text("تراجع",style: TextStyle(color: Colors.white),),),),

                      
                              Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(23),
                     color: Color.fromARGB(255, 243, 33, 33)),
                      child: TextButton(onPressed: (){
                          setState(() {
                   controller.deletefatora(list['id']);
                 });
                 navigator!.pop(context);
                      },child: Text("حذف",style: TextStyle(color: Colors.white),),),),
                           ],
                           
                        
                       );
                     },);
                  
               /*  setState(() {
                   controller.deletefatora(list['id']);
                 });*/

                      }, icon: Icon(Icons.delete,color: Colors.red,size: 35,)),


                        IconButton(onPressed: (){}, icon: Icon(Icons.edit,color: Colors.green,size: 30,)),
                    ],
                  ),
                
             ],
           );
          
       },itemCount:controller.searchbilllist.isEmpty? controller.allfatorlist.length:controller.searchbilllist.length,)
    
    ),
    ),
             )  ),
         ],
       ),);
  }
}