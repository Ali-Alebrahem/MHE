import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mhe/customtf.dart';

class AllErrorFrn extends StatefulWidget {
  const AllErrorFrn({super.key});

  @override
  State<AllErrorFrn> createState() => _AllErrorFrnState();
}

class _AllErrorFrnState extends State<AllErrorFrn> {
  TextEditingController x=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

appBar: AppBar(elevation: 0,toolbarHeight: 70,backgroundColor: Colors.transparent,title: Text("جميع أعطال الفرن",style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold),),centerTitle: true,flexibleSpace: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(27),bottomRight: Radius.circular(27)),
        gradient: LinearGradient(colors: [
        
        Color.fromARGB(255, 85, 66, 248),
          Color.fromARGB(255, 122, 134, 247),
          Color.fromARGB(255, 186, 109, 250),
          Color.fromARGB(255, 188, 50, 252),
        ],transform: GradientRotation(30))
        
        ),)),
        body: Column(children: [SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.only(left: 20,right: 20),

          child: TextFormField(
            
            decoration: InputDecoration(
              hintText: "ابحث عن أي عطل من هنا",
              hintTextDirection: TextDirection.rtl,
              prefixIcon: Icon(Icons.search),
              
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(23))),),
        ),
        SizedBox(height: 20,),
      Expanded(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
          mainAxisSpacing:25 ,
          childAspectRatio: 0.7,
      crossAxisSpacing: 10
           ), 
          itemBuilder:((context, index) {
            return Container(width: 100,decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13),gradient: LinearGradient(colors: [
                Color.fromARGB(255, 193, 186, 253),
          Color.fromARGB(255, 204, 210, 255),
          Color.fromARGB(255, 229, 204, 250),
          Color.fromARGB(255, 231, 209, 241),
        ],transform: GradientRotation(40))),
               child: Column(
                 children: [
                  SizedBox(height: 10,),
                 Expanded(child: Text("ergwergggf",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.white),)),
                  SizedBox(height: 40,),
                 Padding(
                       padding: const EdgeInsets.all(5),
                
                          child: Container(width: double.infinity,height: 170,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(23),
                          
                          image: DecorationImage(image: AssetImage("assets/images/frn.webp"),fit: BoxFit.fill)
                          ),
                        ),
                     ),
                   
                 ],
               ),
            );
          }),itemCount: 5,),
        ),
      )
        
        ]),

    );
  }
}