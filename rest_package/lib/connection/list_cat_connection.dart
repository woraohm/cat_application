import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:rest_package/connection/abstrac_connection.dart';
import 'package:rest_package/constant/header_constant.dart';

class ListCatConnection extends AbstractConnection{

  ListCatConnection(String url) : super(url);

  Future<http.Response> listCat(){
    final endpoint = "v1/breeds";
    final url = includeEndpoint(endpoint);
    print('url= '+url);
    //print('reqJson= '+requestJson);
    final headerMap = Map<String, String>.from(HeaderConstant.getBasicHeader());
    
    return http.get(url,
      headers: headerMap,
    );
  }

}