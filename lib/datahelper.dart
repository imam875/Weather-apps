import 'dart:convert';

import 'package:weatherapi/datamodel.dart';
import 'package:http/http.dart' as http;

class DataHelper{

  List<ModelData> modellist = <ModelData>[];
  String getUrl = "https://api.openweathermap.org/data/2.5/weather?q=Madaripur&appid=8c493207ad4338b203837eff8c9f196b";

   Future<String> getWeather()async{
    final response = await http.get(Uri.parse(getUrl));
    final jsonData =  jsonDecode(response.body) ;
    print(response.body);
    return jsonData.map((e) => ModelData.fromJson(e)).toString();


  }



}
