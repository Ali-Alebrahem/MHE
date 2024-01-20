import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';
import 'package:marquee/marquee.dart';
import 'package:mhe/production/constant.dart';
import 'package:mhe/production/icon.dart';

class sentag extends StatefulWidget {
  const sentag({super.key});

  @override
  State<sentag> createState() => _sentagState();
}

class _sentagState extends State<sentag> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(elevation: 0,toolbarHeight: 70,backgroundColor: Colors.transparent,title: Text("سجل الإنتاج",style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold),),centerTitle: true,flexibleSpace: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(27),bottomRight: Radius.circular(27)),
        gradient: LinearGradient(colors: [
        
        Color.fromARGB(255, 85, 66, 248),
          Color.fromARGB(255, 122, 134, 247),
          Color.fromARGB(255, 186, 109, 250),
          Color.fromARGB(255, 188, 50, 252),
        ],transform: GradientRotation(30))
        
        ),)),
      

        body:SingleChildScrollView(
          child: Column(children: [SizedBox(height:20,),


            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15),
              child: Container(height:MediaQuery.of(context).size.height*1/5,
              width: MediaQuery.of(context).size.width*1/1.1,
              decoration: BoxDecoration(color: Color.fromARGB(255, 130, 140, 255),
                borderRadius: BorderRadius.circular(16),border: Border.all(width: 1)
              ),
           
                child: Column(

                  children: [
                   SizedBox(height: MediaQuery.of(context).size.height*1/40,),

                   Container(height:MediaQuery.of(context).size.height*1/28,
                   color: Colors.white,
                      child:Marquee(text: ".. يمكنك الآن مراجعة سجل إنتاج المعمل",
                   
                        textDirection: TextDirection.ltr,
                        blankSpace: 20,
                        velocity: -100,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 9, 33, 213)),
                        ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height*1/20,),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                   
                      children: [
                      icon(x: Icons.favorite,y:Colors.red),
                      icon(x: Icons.archive,y:Color.fromARGB(255, 8, 117, 8)),
                      icon(x: Icons.delete,y:Color.fromARGB(255, 9, 21, 194)),
                    ],)

                      
                
                  
                  ],
                ),
              
                
                ),
               
             
            ),
            SizedBox(height: MediaQuery.of(context).size.height*1/40,),
            Text(" *إنتاج المعمل الذي تم الإطلاع عليه",style: TextStyle(fontSize: MediaQuery.of(context).size.height*1/55,
            fontWeight: FontWeight.bold,color: Color.fromARGB(255, 0, 0, 0)),),
            SizedBox(height: MediaQuery.of(context).size.height*1/50,),

            
          Container(height: MediaQuery.of(context).size.height*1/5,
          color: Color.fromARGB(255, 244, 244, 244),
          child: ListView.builder(itemCount: 20,padding: EdgeInsets.all(10),
          scrollDirection: Axis.horizontal,itemBuilder: ((context, index) {
            return Row(
              children: [
                Container(width: MediaQuery.of(context).size.width*1/2,
                decoration: BoxDecoration(color: Color.fromARGB(255, 219, 212, 222),
                  borderRadius: BorderRadius.circular(16),),

                  child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [Row(mainAxisAlignment: MainAxisAlignment.spaceAround,children: [Icon(Icons.archive,color:Colors.blue ,),
                    Icon(Icons.favorite_outline,color:Colors.red ,),],),

                      Text("2023/11/22",style: TextStyle(fontSize: MediaQuery.of(context).size.height*1/45,
            fontWeight: FontWeight.bold,color: Color.fromARGB(255, 0, 0, 0)),),
                    Text("قرميد فرنسي",style: TextStyle(fontSize: MediaQuery.of(context).size.height*1/45,
            fontWeight: FontWeight.bold,color: Color.fromARGB(255, 0, 0, 0)),),
                    Text("1500 kg",style: TextStyle(fontSize: MediaQuery.of(context).size.height*1/45,
            fontWeight: FontWeight.bold,color: Color.fromARGB(255, 0, 0, 0)),)]),
                  ),
                SizedBox(width: 10,)
              ],
         
         
            );
          })),
          ),



            SizedBox(height: MediaQuery.of(context).size.height*1/40,),
            Text("إنتاج المعمل الذي لم يتم الإطلاع عليه *",style: TextStyle(fontSize: MediaQuery.of(context).size.height*1/55,
            fontWeight: FontWeight.bold,color: Color.fromARGB(255, 0, 0, 0)),),
            SizedBox(height: MediaQuery.of(context).size.height*1/50,),

            
          Container(height: MediaQuery.of(context).size.height*1/5,
          color: Color.fromARGB(255, 244, 244, 244),
          child: ListView.builder(itemCount: 20,padding: EdgeInsets.all(10),
          scrollDirection: Axis.horizontal,itemBuilder: ((context, index) {
            return Row(
              children: [
                Container(width: MediaQuery.of(context).size.width*1/2,
                decoration: BoxDecoration(color: Color.fromARGB(255, 219, 212, 222),
                  borderRadius: BorderRadius.circular(16),),

                  child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [Row(mainAxisAlignment: MainAxisAlignment.spaceAround,children: [Icon(Icons.archive,color:Colors.blue ,),
                    Icon(Icons.favorite_outline,color:Colors.red ,),],),

                      Text("2023/11/22",style: TextStyle(fontSize: MediaQuery.of(context).size.height*1/45,
            fontWeight: FontWeight.bold,color: Color.fromARGB(255, 0, 0, 0)),),
                    Text("قرميد فرنسي",style: TextStyle(fontSize: MediaQuery.of(context).size.height*1/45,
            fontWeight: FontWeight.bold,color: Color.fromARGB(255, 0, 0, 0)),),
                    Text("1500 kg",style: TextStyle(fontSize: MediaQuery.of(context).size.height*1/45,
            fontWeight: FontWeight.bold,color: Color.fromARGB(255, 0, 0, 0)),)]),
                  ),
                SizedBox(width: 10,)
              ],
         
         
            );
          })),
          ),
             SizedBox(height: MediaQuery.of(context).size.height*1/50,),
Container(width: MediaQuery.of(context).size.width*1/2,
height:MediaQuery.of(context).size.height*1/20 ,
child: ElevatedButton(onPressed: (){}, child: Text("حذف الكل"),style: ButtonStyle(
  elevation: MaterialStateProperty.all(0),
  backgroundColor: MaterialStateProperty.all(Colors.transparent)
),),
  decoration: BoxDecoration(borderRadius: BorderRadius.circular(23),color: Color.fromARGB(255, 209, 0, 0)),)
          
          ]
          
            ),
        )  );
  }
}