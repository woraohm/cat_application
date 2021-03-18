import 'dart:convert';
import 'dart:math';
import 'package:rest_package/connection/list_cat_connection.dart';
import 'package:rest_package/bean/list_cat_response.dart';

class ListCatAPI{
  ListCatConnection listCatconnect = ListCatConnection('api.thecatapi.com');
  
  Future<List<ListCatResponse>>getListCat() async{
    List<ListCatResponse> res = [];

    await listCatconnect.listCat().then((value){
         print('status code GetListCat= ' + value.statusCode.toString());
        if (value.statusCode == 200){
          try{
           
            List<dynamic> responseMapList = jsonDecode(value.body);
            for(int i = 0; i < 10; i ++){
              
              ListCatResponse response = ListCatResponse.fromJson(responseMapList[i]);
            res.add(response);
            }
          }catch(ex){
            print('ex: ' + ex.toString());
          }
        }else{
          print("connect failed");
        }
    });
    return res;
  }
}