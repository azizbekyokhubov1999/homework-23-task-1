import 'package:http/http.dart';

class NetworkService{
  //https://65606ee083aba11d99d0cb16.mockapi.io/person
  static final String baseUrl = "65606ee083aba11d99d0cb16.mockapi.io";
  static final String apiPerson = "/person";

  static Future<String> getData(String api) async{
    Uri uri = Uri.https(baseUrl, api);
    Response response = await get(uri);
    if(response.statusCode == 200 || response.statusCode == 201){
      return response.body;
    }else{
      return "Something went wrong at ${response.statusCode}";
    }
  }
}