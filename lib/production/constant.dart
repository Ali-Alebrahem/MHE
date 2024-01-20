import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class constant extends StatelessWidget {
   IconData x;
   String y;
  constant({super.key,required this.x,required this.y});

  @override
  Widget build(BuildContext context) {
    return  Column(
          children: [
     
           Container(width: 50,height: 50,
                decoration: BoxDecoration(shape: BoxShape.circle,   gradient: LinearGradient(colors: [
        
        Color.fromARGB(255, 85, 66, 248),
          Color.fromARGB(255, 122, 134, 247),
          Color.fromARGB(255, 186, 109, 250),
          Color.fromARGB(255, 188, 50, 252),
        ],transform: GradientRotation(30))),
              child: Icon(x,size: 40,color: Color.fromARGB(255, 0, 0, 0),),
           ),
          
            Text(y,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Color.fromARGB(255, 0, 0, 0)),)
          ],
    
   );
  
  }
}