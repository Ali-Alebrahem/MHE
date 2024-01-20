import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class customtf extends StatelessWidget {
  String hint;
  Widget  icon;
  TextEditingController controller;
   customtf({super.key,required this.hint,required this.controller,required this.icon});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(10),
        
          child: Container(height: MediaQuery.of(context).size.height*1/19,

            child: TextFormField(textAlignVertical: TextAlignVertical.bottom,textDirection: TextDirection.rtl,
             
              decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(25))),
  hintText: hint,
 
   hintTextDirection: TextDirection.rtl,
  fillColor: Color.fromARGB(255, 255, 255, 255),
  filled: true,
  prefixIcon: icon,
  
 
            ),
        
            controller: controller,
            ),
          ),
        
      ),
    );
  }
}