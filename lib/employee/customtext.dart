import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class customtext extends StatelessWidget {
  String text;
  Color color;
  customtext({super.key,required this.text,required this.color});

  @override
  Widget build(BuildContext context) {
    return Text(text,style: TextStyle(color: color,fontSize: 24,fontWeight: FontWeight.bold),);
  }
}