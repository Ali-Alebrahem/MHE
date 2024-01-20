
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/sockets/src/socket_notifier.dart';
import 'package:mhe/customtf.dart';
import 'package:mhe/employee/detail.dart';

import '../mhecontroller.dart';

class Employee extends StatefulWidget {
  const Employee({super.key});

  @override
  State<Employee> createState() => _EmployeeState();
}

class _EmployeeState extends State<Employee> {

@override
void initState() {
    // TODO: implement initState
    super.initState();

     Timer(Duration(seconds: 1),(() {
        controller.allemployee();
     }));
  }


  final controller=Get.put(mhecontroller());
TextEditingController namecon=TextEditingController();
TextEditingController phonecon=TextEditingController();
TextEditingController detailcon=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(  appBar: AppBar(elevation: 0,toolbarHeight: 70,backgroundColor: Colors.transparent,title: Text("الموظفين",style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold),),centerTitle: true,flexibleSpace: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(27),bottomRight: Radius.circular(27)),
        gradient: LinearGradient(colors: [
        
        Color.fromARGB(255, 85, 66, 248),
          Color.fromARGB(255, 122, 134, 247),
          Color.fromARGB(255, 186, 109, 250),
          Color.fromARGB(255, 188, 50, 252),
        ],transform: GradientRotation(30))
        
        ),)),
      body:SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height*1/50),
             Padding(
            padding: const EdgeInsets.only(left: 20,right: 20),

            child: Container(
              height:  MediaQuery.of(context).size.height*1/17,
              decoration: BoxDecoration(border: Border.all(width: 1),borderRadius: BorderRadius.circular(23)),
              child: TextFormField(textAlignVertical: TextAlignVertical.bottom,
                
                decoration: InputDecoration(fillColor: Color.fromARGB(255, 240, 238, 238),filled: true,
                  hintText: "ابحث عن أي موظف عن طريق الاسم",
                  hintTextDirection: TextDirection.rtl,
                  prefixIcon: Icon(Icons.search),
                  
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(23))),),
            ),
          ),
            SizedBox(height:  MediaQuery.of(context).size.height*1/35),
            Padding(
              padding: const EdgeInsets.only(left: 5,right: 5),
              child:Obx(()=> Container(width: double.infinity,height:  MediaQuery.of(context).size.height*1/1.6,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black,width: 1),
                  borderRadius: BorderRadius.circular(14),color:controller.employee.isEmpty?Colors.white:
                   Color.fromARGB(255, 204, 202, 236)),
                
                child:Obx(()=>controller.employee.isEmpty?
                Center(child: CircularProgressIndicator()):
                
                
                 ListView.builder(itemBuilder: (context, index) {
                  var list=controller.employee[index];
                  return Column(
                    children: [SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.only(left: 10,right: 10),
                        child: Container(width: double.infinity,height: MediaQuery.of(context).size.height*1/15,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                        color: Colors.white,),
                        
                        child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                         
                         Row(
                           children: [
                             Padding(
                                        padding: const EdgeInsets.only(left: 10,right: 10),
                                        child: Container(width:  MediaQuery.of(context).size.width*1/7,
                                        height:  MediaQuery.of(context).size.height*1/22,
                                        child: IconButton(onPressed: (){},icon: Icon(Icons.delete,color: Color.fromARGB(255, 244, 231, 54),),),
                                        decoration: BoxDecoration(shape:BoxShape.circle,color: Color.fromARGB(255, 238, 36, 36) ),),
                                      ),
                                       Container(width:  MediaQuery.of(context).size.width*1/10,
                                        height:  MediaQuery.of(context).size.height*1/22,
                                       child: IconButton(onPressed: (){
                                        
                                           
                                       controller.detailemployee("${list['name']}","${list['phone']}" ,"${list['detail']}" );
                                      Get.to(detail());

                                       },icon: Icon(Icons.person,color: Color.fromARGB(255, 33, 255, 33),),),
                          decoration: BoxDecoration(shape:BoxShape.circle,color: Color.fromARGB(255, 73, 45, 231) ),),
                           ],
                         ),
                                
                             
                         
                     
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Text("${list['name']}",style: TextStyle(fontSize: MediaQuery.of(context).size.height*1/33),),
                      ),
                        
                        ],),
                        ),
                      ),
                    ],
                  );
                },itemCount: controller.employee.length,),),
                ),),
            ),
              SizedBox(height: MediaQuery.of(context).size.height*1/30),
               Container(
         width:  MediaQuery.of(context).size.width*1/3,
         height:  MediaQuery.of(context).size.height*1/18,
          decoration:BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10),),
 gradient: LinearGradient(colors: [Color.fromARGB(255, 67, 47, 245),
          Color.fromARGB(255, 90, 106, 252),
          Color.fromARGB(255, 174, 79, 252),
          Color.fromARGB(255, 180, 26, 252),
        ],transform: GradientRotation(30)

 )),
        
          
         
                     child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.add_box,color: Colors.white,),
                          TextButton(onPressed: (){
      showDialog(barrierColor: Color.fromARGB(193, 0, 0, 0),
        context: context, builder: ((context) {
        return   Dialog(backgroundColor: Color.fromARGB(255, 200, 200, 200),child: Container(width: 400,height: 600,decoration: BoxDecoration(
         
          borderRadius: BorderRadius.circular(21),
     
        ),
        child:SingleChildScrollView(
          child: Padding(padding: EdgeInsets.all(8),child: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: (){
                    Navigator.pop(context);
                  }, icon: Icon(Icons.close)),
                  
                  Container(width: 80,height: 80,decoration: BoxDecoration(shape: BoxShape.circle,
                    image:DecorationImage(image: AssetImage("assets/images/mo.jpg"),fit: BoxFit.fill ) ),),
                  
                ],
              ),
              SizedBox(height: 7,),
              Row(children: [
                customtf(controller: namecon,hint: "أدخل الاسم الثلاثي",icon: Icon(Icons.person),),
                Text(": أسم الموظف ",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                
              ],),
              SizedBox(height: 10,),
                Row(children: [
                customtf(controller: phonecon,hint: "********09",icon: Icon(Icons.phone),),
                Text(": رقم الهاتف ",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                
              ],),
              SizedBox(height: 10,),
                Text(": نبذة مختصرة",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
               TextFormField(
            
            
                maxLines: 8,maxLength: 100,controller: detailcon,
                                decoration:InputDecoration(fillColor: Color.fromARGB(255, 255, 255, 255),filled: true,
                                hintText: "أضف نبذة مختصرة...",
                                hintTextDirection: TextDirection.rtl,
                                  
                                  border: OutlineInputBorder(
                                  
                                  borderRadius: BorderRadius.circular(23)))),
          
       ElevatedButton(onPressed: ()async {
    
     await  controller.addemployee(namecon.text, phonecon.text, detailcon.text);
       controller.allemployee();
    
       },
        child:Text("أضف موظف",style: TextStyle(fontWeight: FontWeight.bold),) ,),
            ],
          ),),
        ),
             ));
        
      }));

  },child: Text("أضف موظف",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 20,color: Color.fromARGB(255, 255, 255, 255)),),),
                        ],
          ),
        ),
          ],
        ),
      )
      
      );}
}