
import 'dart:ui';


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mhe/home.dart';

import 'dart:convert';

import 'package:mhe/link.dart';
import 'package:http/http.dart' as http;



class mhecontroller extends GetxController{
  RxBool eqalpass=true.obs;
  RxInt iid=20.obs;
  RxMap detail={}.obs;
  RxInt count=0.obs;
  RxBool x=false.obs;
RxList allfatorlist=[].obs;
RxList employee=[].obs;
RxList searchbilllist=[].obs;

String? passstate;
String ?passval;

  postRequest(String url,Map data)async {
 
try{


var response=await http.post(Uri.parse(url),body: data);
if(response.statusCode==200){
var responsebody=jsonDecode(response .body);
return responsebody;
}


else{print("Error ${response.statusCode}");}

}
catch(e){
print ("Error  catch $e");
}
  }



   getRequest(String url)async {
 
try{


var response=await http.post(Uri.parse(url));
if(response.statusCode==200){
var responsebody=jsonDecode(response .body);
return responsebody;
}


else{print("Error ${response.statusCode}");}

}
catch(e){
print ("Error  catch $e");
}
  }





addfatora(String username,String phone,String x,String quan,String selec,String price)async{
  var res=await postRequest(Linkaddfatora, {
   "username":username,
  "phone":phone,
   "date":x,
    "quan":quan,
   "type":selec,
  "price":price
  });
  allfatorlist.add(res);
}




allfatora()async{
var res=await getRequest(Linkallfatora);
allfatorlist.assignAll(res);


}

deletefatora(String x)async{
var res=await postRequest(Linkdeletefatora, {
  "id":x
});
allfatora();
}


addemployee(String name,String phone,String detail)async{
  var res=await postRequest(Linkaddemployee, {
   "name":name,
  "phone":phone,
  "detail":detail,
  });
  //employee.add(res);
  if(res['status']=='success'){
    
     Get.snackbar('بنجاح ${name} تم إضافة','',backgroundColor: Color.fromARGB(255, 7, 134, 189),colorText: Colors.white,duration: 
    Duration(seconds: 2),
    snackPosition:SnackPosition.BOTTOM,margin: EdgeInsets.symmetric(horizontal: 20,vertical: 100),padding: 
    EdgeInsets.symmetric(horizontal: 20,vertical: 10),borderRadius: 10,messageText: Text('',textAlign: 
    TextAlign.center,style: TextStyle(fontSize: 10)
    ,)
        );
  }
  else print("noooo");
}

allemployee()async{
  var res=await getRequest(Linkallemployee);
  employee.assignAll(res);

}

detailemployee(String name,String phone,String details){
detail.value={
  'name':name,
  'phone':phone,
  'details':details
};

}



printa(){
x.value=true;
}

searchbill(String x) async{
var res=await postRequest(Linksearchbill,
{"date":x});
searchbilllist.assignAll(res);

}

add(){
  count.value=count.value+1;
}
remove(){
  count.value=count.value-1;
}

chcolor(int id){
iid.value=id;

}

ex(String link,List list)async{
  var res=await http.post(Uri.parse(link),body:list);
  if(res.statusCode==200){
   var resbody= jsonDecode(res.body);
    return resbody;
  }
  else{print("Error");}

}


secur(String pass)async{
var res=await postRequest(Linksecur, {
'passstate':1.toString(),
'passval':pass
});
}

securview()async{
var res=await getRequest(Linksecurview);
passstate=res[0]['passstate'];
passval=res[0]['passval'];
print(passstate);
print(passval);
}

interpass(String password){
if(password==passval){
  Get.off(home());
}
else{eqalpass.value=false;}
}
valid(String val,String paass){
if(val!=paass) {return "لا يوجد تطابق حاول ثانية";}
}
}



