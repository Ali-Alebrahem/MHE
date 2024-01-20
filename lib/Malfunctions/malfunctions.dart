import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:mhe/Malfunctions/addmalfr.dart';
import 'package:mhe/Malfunctions/addmalala.dart';
import 'package:mhe/Malfunctions/addmalkh.dart';
import 'package:mhe/Malfunctions/allmalfr.dart';

class Errorm extends StatelessWidget {
  const Errorm({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
        backgroundColor: Color.fromARGB(255, 243, 243, 243),
      appBar: AppBar(elevation: 0,toolbarHeight: 70,backgroundColor: Colors.transparent,title: Text("الأعطال",style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold),),centerTitle: true,flexibleSpace: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(27),bottomRight: Radius.circular(27)),
        gradient: LinearGradient(colors: [
        
       Color.fromARGB(255, 85, 66, 248),
          Color.fromARGB(255, 122, 134, 247),
          Color.fromARGB(255, 186, 109, 250),
          Color.fromARGB(255, 188, 50, 252),
        ],transform: GradientRotation(30))
        
        ),)),
        body:  Padding(
          padding: const EdgeInsets.only(left: 13,right: 13,top: 18,bottom: 40),
          child: Container(
            decoration: BoxDecoration(color: Color.fromARGB(255, 212, 208, 252),borderRadius: BorderRadius.all(Radius.circular(20))),
          child: Column(children: [
            SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(height: MediaQuery.of(context).size.height*1/4.4,
              decoration: BoxDecoration(border: Border.all(width: 2,color: Colors.black),color: Color.fromARGB(255, 197, 197, 197),borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [Container(width: MediaQuery.of(context).size.width*1/2.1,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/images/frn.webp"),fit: BoxFit.cover)
                  ,color: Color.fromARGB(255, 255, 255, 255),borderRadius: BorderRadius.all(Radius.circular(20)))
              ),
              
              Padding(
                padding: const EdgeInsets.only(right: 17,top: 10),
                child: Column(
                  children: [
                    Text("أعطال الفرن",style: TextStyle(fontWeight: FontWeight.bold,color: Color.fromARGB(255, 158, 3, 132),fontSize:  MediaQuery.of(context).size.height*1/30,),),
                   SizedBox(height: 3,),
                 
                     Container(
        width:  MediaQuery.of(context).size.width*1/3.5,height:  MediaQuery.of(context).size.height*1/16,
        decoration:BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),
 color: Color.fromARGB(255, 27, 13, 224)),
      
 child: TextButton(onPressed: (){Get.off(AddErrorfrn());},child: Text("أضف عطل",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 20,color: Color.fromARGB(255, 255, 255, 255)),),),
                            
      
      ),
      SizedBox(height:  MediaQuery.of(context).size.height*1/75),
                    Container(
         width:  MediaQuery.of(context).size.width*1/3.2,height:  MediaQuery.of(context).size.height*1/16,
        decoration:BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),
 color: Color.fromARGB(255, 38, 224, 13)),
      
 child: TextButton(onPressed: (){Get.to(AllErrorFrn());},child: Text("جميع الأعطال",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 20,color: Color.fromARGB(255, 255, 255, 255)),),),
                            
      
      ),
                  ],
                ),
              ),
             
             ],),
              ),
            ),


            SizedBox(height: 5,),

            //__________________________________________________________________________________
             Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(height: MediaQuery.of(context).size.height*1/4.4,
              decoration: BoxDecoration(border: Border.all(width: 2,color: Colors.black),color: Color.fromARGB(255, 197, 197, 197),borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [Container(width: MediaQuery.of(context).size.width*1/2.1,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/images/ala.jpg"),fit: BoxFit.cover)
                  ,color: Color.fromARGB(255, 255, 255, 255),borderRadius: BorderRadius.all(Radius.circular(20)))
              ),
              
              Padding(
                padding: const EdgeInsets.only(right: 17,top: 10),
                child: Column(
                  children: [
                    Text("أعطال الفرن",style: TextStyle(fontWeight: FontWeight.bold,color: Color.fromARGB(255, 158, 3, 132),fontSize:  MediaQuery.of(context).size.height*1/30,),),
                   SizedBox(height: 3,),
                 
                     Container(
        width:  MediaQuery.of(context).size.width*1/3.5,height:  MediaQuery.of(context).size.height*1/16,
        decoration:BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),
 color: Color.fromARGB(255, 27, 13, 224)),
      
 child: TextButton(onPressed: (){Get.off(AddErrorala());},child: Text("أضف عطل",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 20,color: Color.fromARGB(255, 255, 255, 255)),),),
                            
      
      ),
      SizedBox(height:  MediaQuery.of(context).size.height*1/75),
                    Container(
         width:  MediaQuery.of(context).size.width*1/3.2,height:  MediaQuery.of(context).size.height*1/16,
        decoration:BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),
 color: Color.fromARGB(255, 38, 224, 13)),
      
 child: TextButton(onPressed: (){},child: Text("جميع الأعطال",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 20,color: Color.fromARGB(255, 255, 255, 255)),),),
                            
      
      ),
                  ],
                ),
              ),
             
             ],),
              ),
            ),

             SizedBox(height: 5,),


             //_______________________________________________________________________________________
             Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(height: MediaQuery.of(context).size.height*1/4.4,
              decoration: BoxDecoration(border: Border.all(width: 2,color: Colors.black),color: Color.fromARGB(255, 197, 197, 197),borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [Container(width: MediaQuery.of(context).size.width*1/2.1,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/images/kh.jpg"),fit: BoxFit.cover)
                  ,color: Color.fromARGB(255, 255, 255, 255),borderRadius: BorderRadius.all(Radius.circular(20)))
              ),
              
              Padding(
                padding: const EdgeInsets.only(right: 17,top: 10),
                child: Column(
                  children: [
                    Text("أعطال الفرن",style: TextStyle(fontWeight: FontWeight.bold,color: Color.fromARGB(255, 158, 3, 132),fontSize:  MediaQuery.of(context).size.height*1/30,),),
                   SizedBox(height: 3,),
                 
                    Container(
        width:  MediaQuery.of(context).size.width*1/3.5,height:  MediaQuery.of(context).size.height*1/16,
        decoration:BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),
 color: Color.fromARGB(255, 27, 13, 224)),
      
 child: TextButton(onPressed: (){Get.off(AddErrorkh());},child: Text("أضف عطل",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 20,color: Color.fromARGB(255, 255, 255, 255)),),),
                            
      
      ),
      SizedBox(height:  MediaQuery.of(context).size.height*1/90),
                    Container(
         width:  MediaQuery.of(context).size.width*1/3.2,height:  MediaQuery.of(context).size.height*1/16,
        decoration:BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),
 color: Color.fromARGB(255, 38, 224, 13)),
      
 child: TextButton(onPressed: (){},child: Text("جميع الأعطال",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 20,color: Color.fromARGB(255, 255, 255, 255)),),),
                            
      
      ),
                  ],
                ),
              ),
             
             ],),
              ),
            ),

          ]),
          
          ),
        ),
        
        
        );
  }
}