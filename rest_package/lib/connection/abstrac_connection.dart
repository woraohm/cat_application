import 'package:http/http.dart';

abstract class AbstractConnection{

  String urlPath;

  AbstractConnection(String url){
    this.urlPath = "https://$url/";
  }

  String includeEndpoint(String endpoint){
    return urlPath + endpoint;
  }

}