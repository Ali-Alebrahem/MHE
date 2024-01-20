import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class icon extends StatelessWidget {
  IconData x;
  Color y;
  icon({super.key,required this.x,required this.y});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(width: MediaQuery.of(context).size.width*1/5,
      height: MediaQuery.of(context).size.height*1/20,
        decoration: BoxDecoration(shape: BoxShape.circle,color: Color.fromARGB(255, 255, 255, 255)),
      child: Icon(x,color: y,size: 30,),),
      );
    
  }
}