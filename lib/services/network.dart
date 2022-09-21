import 'dart:convert';

import 'package:apilar/models/parsing.dart';
import 'package:apilar/models/country.dart';
import 'package:http/http.dart';

class Network {
  static String BASE = "countriesnow.space";
 // static Map<String, String> headers = {"apikey": "dpxom9V7csAwibJ7oeFz7u97Zf1PGcqK"};

  //https api
  static String base_api="/api/v0.1/countries";
static String api_list="/capital";
static String api_flag="/flag/images";

///requests

static Future<String?>GET(String api,Map<String, String> params) async{
var uri=Uri.https(BASE,api);
var response= await get(uri,);
if(response.statusCode==200){
return response.body;
}
return null;
}

  static Map<String, String> paramsEmpty() {
    Map<String, String> params = new Map();
    return params;
  }

static parseData(String source){
dynamic json=jsonDecode(source);
var data=Country.fromJson(json);
}

}
