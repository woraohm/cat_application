class HeaderConstant{

  static const xApiKey = 'X-Api-Key';
  static const contentType = 'Content-Type';
  

  static var valueContentType = 'application/json';
  static var valueXApiKey = 'DEMO-API-KEY';

  static Map<String, String> getBasicHeader(){
    return <String, String> {
      xApiKey: valueXApiKey,
      contentType: valueContentType
    
    };
  }

}