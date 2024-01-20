import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:mhe/mhecontroller.dart';

class secur2 extends StatefulWidget {
  const secur2({super.key});

  @override
  State<secur2> createState() => _secur2State();
}

class _secur2State extends State<secur2> {
  GlobalKey <FormState> state=GlobalKey();
  TextEditingController password=TextEditingController();
  RxBool sec=true.obs;
  final controller=Get.put(mhecontroller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color.fromARGB(255, 255, 255, 255),body: SingleChildScrollView(
      child: Column(
        children: [SizedBox(height:MediaQuery.of(context).size.height*1/3 ,),
          Align(alignment: Alignment.center,
            child:Obx(()=> Form(key: state,
              child: Container(width: MediaQuery.of(context).size.width*1/1.5,height: MediaQuery.of(context).size.height*1/2,
                child: Column(children: [
                 
                  Text(" التطبيق محمي بكلمة مرور",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
                  Text("الرجاء إدخال كلمة المرور",style: TextStyle(fontSize: 16,color: Color.fromARGB(255, 34, 1, 136),fontWeight: FontWeight.bold),),
               SizedBox(height: 30,),
               //  controller.eqalpass==false?Text(" كلمة المرور غير صحيحة الرجاء المحاولة ثانية",style: TextStyle(fontSize: 16,color: Color.fromARGB(255, 244, 1, 1),fontWeight: FontWeight.bold)):Container(),
               TextFormField(controller: password,
               validator: (value) {
                 if(value!=controller.passval){return "كلمة المرور غير صحيحة حاول ثانية";}
               },
                obscureText:sec.value,obscuringCharacter: "*",maxLength: 20,
               style: TextStyle(color: Color.fromARGB(255, 30, 111, 18),fontSize: 18,fontWeight: FontWeight.bold),
                decoration: InputDecoration(
                  hintText: "***********",icon: Icon(Icons.lock),
                  suffixIcon:InkWell(onTap:(){
                    setState(() {
                     if(sec.value==true){ sec.value=false;}
                     else { sec.value=true;}
                    });
                  },
                    child: Icon(Icons.remove_red_eye)),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))),),
                SizedBox(height: 30,),
               Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                       Container(width: 120,height: 40,decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.red),
                        child: ElevatedButton.icon(style: ButtonStyle(elevation: MaterialStateProperty.all(0),
                          backgroundColor: MaterialStateProperty.all(Colors.transparent)),
                          onPressed: (){
                          
                          }, icon: Icon(Icons.close), label: Text("خروج"))),


                       Container(width: 120,height: 40,decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Color.fromARGB(255, 36, 189, 12)),
                        child: ElevatedButton.icon(style: ButtonStyle(elevation: MaterialStateProperty.all(0),
                          backgroundColor: MaterialStateProperty.all(Colors.transparent)),
                          onPressed: (){
                          if(state.currentState!.validate()){
                             controller.interpass(password.text);
                          }
                          }, icon: Icon(Icons.lock_open_outlined), label: Text("تأكيد"))),

                     

                    ],
                  ),
              
              SizedBox(height: 20,),
           
                ]),
              ),
            ),),
          ),
        ],
      ),
    ),);
  }
}