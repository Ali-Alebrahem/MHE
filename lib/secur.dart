import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:mhe/mhecontroller.dart';

import 'customtf.dart';
import 'home.dart';

class secur extends StatefulWidget {
  const secur({super.key});

  @override
  State<secur> createState() => _securState();
}

class _securState extends State<secur> {
 GlobalKey <FormState> state=GlobalKey();
final controller=Get.put(mhecontroller());
TextEditingController pass=TextEditingController();
TextEditingController confirm=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: SingleChildScrollView(
        child: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height*1/6,),

          Text("أدخل كلمة مرور خاصة بك من أجل الحفاظ على بياناتك",style: TextStyle(fontSize:MediaQuery.of(context).size.height*1/60 ),),
          SizedBox(height: MediaQuery.of(context).size.height*1/40,),
          Padding(
            padding: const EdgeInsets.only(left: 10,right: 10),
            child: Form(key: state,
              child: Container(width: double.infinity,height: MediaQuery.of(context).size.height*1/2.8,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(colors: [
        
        Color.fromARGB(255, 136, 136, 136),
          Color.fromARGB(255, 105, 105, 105),
          Color.fromARGB(255, 68, 68, 68),
          Color.fromARGB(255, 52, 52, 52),
        ],transform: GradientRotation(30))
                ),
          
               
               child: Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                   SizedBox(height: MediaQuery.of(context).size.height*1/40,),
                Text("أدخل كلمة المرور",style: TextStyle(fontSize:MediaQuery.of(context).size.height*1/46,color: Colors.white ),),
               customtf(hint: "أدخل كلمة المرور", controller:pass , icon: Icon(Icons.password)),
 //SizedBox(height: MediaQuery.of(context).size.height*1/80,),
               Text("تأكيد كلمة المرور",style: TextStyle(fontSize:MediaQuery.of(context).size.height*1/46,color: Colors.white ),),
              
               Padding(
                 padding: const EdgeInsets.only(left: 10,right: 10,bottom: 30),
                 child: TextFormField(validator: (val)  {
                  
                   return  controller.valid(val!,pass.text);
               
                 },
                 textAlign: TextAlign.right,
                  decoration: InputDecoration(filled: true,hintTextDirection: TextDirection.rtl,errorStyle: TextStyle(color: Color.fromARGB(255, 255, 0, 0),fontSize: 17) ,
                    fillColor: Color.fromARGB(255, 245, 245, 245),border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                  hintText: "تأكيد كلمة المرور",prefixIcon: Icon(Icons.confirmation_number_outlined)),),
               )
               ]),
          
              ),
            ),
          ),
SizedBox(height: MediaQuery.of(context).size.height*1/30,),

          Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
               Container(width: 120,height: 40,decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.red),
                child: ElevatedButton.icon(style: ButtonStyle(elevation: MaterialStateProperty.all(0),
                  backgroundColor: MaterialStateProperty.all(Colors.transparent)),
                  onPressed: (){
                  Get.off(home());
                  }, icon: Icon(Icons.arrow_back_ios_rounded), label: Text("رجوع"))),


               Container(width: 120,height: 40,decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Color.fromARGB(255, 36, 189, 12)),
                child: ElevatedButton.icon(style: ButtonStyle(elevation: MaterialStateProperty.all(0),
                  backgroundColor: MaterialStateProperty.all(Colors.transparent)),
                  onPressed: (){
                    
                  if(state.currentState!.validate()) {
                     controller.secur(pass.text);
                    AwesomeDialog(context: context,title: "تم إضافة كلمة مرور",dialogType: DialogType.success,
                desc: "لن تتمكن من الدخول مرة اخرى الى التطبيق دون إدخال كلمة المرور",
                titleTextStyle: TextStyle(color: Color.fromARGB(255, 233, 7, 7),fontSize:18,fontWeight: FontWeight.bold ),
                btnOkColor: Color.fromARGB(255, 9, 208, 5),
                descTextStyle:TextStyle(color: Color.fromARGB(255, 0, 0, 0),fontSize:15,fontWeight: FontWeight.bold ) ,
            btnOkOnPress: () {},
           barrierColor: Color.fromARGB(196, 0, 0, 0),
              animType: AnimType.bottomSlide,)..show();
                  }
                  else{print("errror");}
                  }, icon: Icon(Icons.lock), label: Text("تأكيد"))),
             

            ],
          )
        ],
     ),
      ) );
  }
}