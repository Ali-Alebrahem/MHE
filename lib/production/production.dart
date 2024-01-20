import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:mhe/mhecontroller.dart';
import 'package:mhe/production/sentag.dart';

class Entag extends StatefulWidget {
  const Entag({super.key});

  @override
  State<Entag> createState() => _EntagState();
}

class _EntagState extends State<Entag> {
  int? selectedValue;
  bool frnse=false;
bool asth=false;
bool astk=false;
 bool afran=false;
DateTime x=DateTime.now();
TimeOfDay y=TimeOfDay.now();
final controller = Get.put(mhecontroller());
  var selec;
  @override
  Widget build(BuildContext context) {
    return Scaffold( appBar: AppBar(elevation: 0,toolbarHeight: 70,backgroundColor: Colors.transparent,title: Text("إنتاج المعمل",style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold),),centerTitle: true,flexibleSpace: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(27),bottomRight: Radius.circular(27)),
        gradient: LinearGradient(colors: [
        
        Color.fromARGB(255, 85, 66, 248),
          Color.fromARGB(255, 122, 134, 247),
          Color.fromARGB(255, 186, 109, 250),
          Color.fromARGB(255, 188, 50, 252),
        ],transform: GradientRotation(30))
        
        ),)),
      
      body:SingleChildScrollView(
        child: Column(children: [
          SizedBox(height:MediaQuery.of(context).size.width*1/16,),
          Text("أضغط على الأيقونات من هنا لتحديد تاريخ و وقت الإنتاج",style: TextStyle(fontWeight: FontWeight.bold,color: Color.fromARGB(255, 74, 54, 255)),),
          SizedBox(height: MediaQuery.of(context).size.width*1/18,),

          //.............................................................. date and hour.............
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
          
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Container(width: MediaQuery.of(context).size.width*1/2.8,
                height: MediaQuery.of(context).size.height*1/16,
                child: Center(child: Text("${x.year}/${x.month}/${x.day}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),)),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(18),color: Color.fromARGB(255, 196, 196, 196)),),
              ),
            IconButton(onPressed: ()async{
             DateTime?z=await showDatePicker(context: context,
               initialDate: x,
                firstDate: DateTime(2023),
                 lastDate: DateTime(2024));
                 setState(() {
                   if(z==null){return;}
                 else{x=z;}
                 });
            }, icon: Icon(Icons.date_range,size: 35,color: Colors.green,)),
            SizedBox(width: MediaQuery.of(context).size.width*1/37),

            
              Container(width: MediaQuery.of(context).size.width*1/3,
                height: MediaQuery.of(context).size.height*1/16,child: Center(child: Text("${y.hour}:${y.minute}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),)),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(18),color: Color.fromARGB(255, 207, 207, 207)),),
            IconButton(onPressed: ()async{
            TimeOfDay? t=await showTimePicker(context: context,
               initialTime:y);
              setState(() {
                 if(t==null){return;}
               else{y=t;}
              });
            }, icon: Icon(Icons.punch_clock,size: 35,color: Colors.blue)),
          
          ],),
          //...................................end of date and hour.......................
SizedBox(height: MediaQuery.of(context).size.height*1/30),
Text("أختر نوع القرميد الذي تم انتاجه اليوم",style: TextStyle(fontWeight: FontWeight.bold,color: Color.fromARGB(255, 57, 54, 255)),),





SizedBox(height:MediaQuery.of(context).size.height*1/40),
         Align(alignment: Alignment.center,
            child: Container(width:MediaQuery.of(context).size.width*1/1.3,
            height: MediaQuery.of(context).size.height*1/3.5,
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Color.fromARGB(255, 199, 194, 245),
            Color.fromARGB(255, 211, 214, 247),
            Color.fromARGB(255, 229, 201, 252),
            Color.fromARGB(255, 240, 213, 252),
              ],transform:GradientRotation(10)),
              border: Border.all(width: 2,color: Color.fromARGB(255, 255, 255, 255),
            
            ),borderRadius: BorderRadius.circular(22)),
              child: ListView(
                children: [
                  CheckboxListTile(
                          title: Text('قرميد فرنسي',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                          value: frnse,
                          onChanged:(value) {
                         setState(() {
                            frnse=value!;
                            print("$value");
                         });
                          },
                        ),
                         CheckboxListTile(
                    title: Text('قرميد أسطحة',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                    value: asth,
                    onChanged:(value) {
                      setState(() {
                          asth=value!;
                         });
                    }, 
                  ),
                  CheckboxListTile(
                    title: Text('قرميد أفران',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                    value:afran,
                    onChanged:(value) {
                   setState(() {
                            afran=value!;
                         });
                    }, 
                  ),
                  (
                   CheckboxListTile(
                      title:Text("قرميد أفران كبير",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18), ),
                      value:astk,
                      onChanged:(value) {
                     setState(() {
                            astk=value!;
                         });
                      }, 
                   )
                  ),
                ],
              ),
            ),
          ),
SizedBox(height: MediaQuery.of(context).size.height*1/38),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
           

  
   Container(width: MediaQuery.of(context).size.width*1/2.5,
   height:MediaQuery.of(context).size.height*1/16,
    
         child: TextFormField(style: TextStyle(color: Colors.red,fontSize: 20),
                        textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.bottom,
                         
                          decoration: InputDecoration(border:OutlineInputBorder(borderRadius: BorderRadius.circular(22),
                          
  
                          ),hintText: "أدخل الكمية بالكيلو",hintTextDirection: TextDirection.rtl,
                  
                          ),
  
                        ),
       ),
     
   
                
  
              
SizedBox(width: 10,),
    Text(": الكمية الإجمالية ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Color.fromARGB(255, 255, 54, 238)),)
          ],),
          SizedBox(height: 18,),
       Container(width: MediaQuery.of(context).size.width*1/1.3,
       height: MediaQuery.of(context).size.height*1/7,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(22),  gradient: LinearGradient(colors: [
                Color.fromARGB(255, 199, 194, 245),
            Color.fromARGB(255, 211, 214, 247),
            Color.fromARGB(255, 229, 201, 252),
            Color.fromARGB(255, 240, 213, 252),
              ],transform:GradientRotation(10)),),
         child: SingleChildScrollView(
           child: Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
             children: [
               RadioListTile(
                title: Text("تم الاطلاع على إنتاج اليوم",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                value: 1,
                groupValue: selectedValue,
                 onChanged: (value) {
                setState(() {
                  selectedValue = value;
                  print("$selectedValue");
                });
               
              },),
                  RadioListTile(
            title: Text("لم يتم الاطلاع اليوم",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
            value: 2,
            groupValue: selectedValue,
             onChanged: (value) {
                setState(() {
                  selectedValue = value;
                   print("$selectedValue");
                });
               
              },),
             ],
           ),
         ),
       ),
       SizedBox(height: MediaQuery.of(context).size.height*1/38),
       Row(mainAxisAlignment: MainAxisAlignment.center,children: [
         Container(width: MediaQuery.of(context).size.width*1/4,
         height:MediaQuery.of(context).size.height*1/18,
         decoration: BoxDecoration(borderRadius: BorderRadius.circular(22),color: Color.fromARGB(255, 4, 175, 12)),
          child:TextButton(onPressed: (){
            Get.to(sentag());
          }, child:Text("سجل الإنتاج",style: TextStyle(color: Colors.white),))),
          SizedBox(width: MediaQuery.of(context).size.width*1/23),
      Container(width: MediaQuery.of(context).size.width*1/4,
         height:MediaQuery.of(context).size.height*1/18,
         decoration: BoxDecoration(borderRadius: BorderRadius.circular(22),color: Color.fromARGB(255, 54, 82, 244)),
          child:TextButton(onPressed: (){
                    
          }, child:Text("أضف الآن",style: TextStyle(color: Colors.white),))),
      
       ],)

        ],),
      )
      
      
      
      
      
      
      
      
     
      
       );
  }
}