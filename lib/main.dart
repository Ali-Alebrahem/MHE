
import 'package:flutter/material.dart';
import 'package:mhe/bills/ex.dart';
import 'package:mhe/employee/detail.dart';
import 'package:mhe/employee/employee.dart';
import 'package:mhe/mhecontroller.dart';
import 'package:mhe/production/icon.dart';
import 'package:mhe/production/production.dart';
import 'package:mhe/Malfunctions/addmalfr.dart';
import 'package:mhe/Malfunctions/allmalfr.dart';
import 'package:mhe/Malfunctions/malfunctions.dart';
import 'package:mhe/bills/addbill.dart';
import 'package:mhe/bills/allbill.dart';
import 'package:mhe/home.dart';
import 'package:get/get.dart';
import 'package:mhe/production/sentag.dart';
import 'package:mhe/secur.dart';
import 'package:mhe/secur2.dart';
import 'package:mhe/welcome.dart';






void main() {
 
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return GetMaterialApp(
    debugShowCheckedModeBanner: false,
      title: 'Course PHP,',
      home:  Scaffold(backgroundColor: Colors.white,
        body:home() ));
      
    
      ;}}
 