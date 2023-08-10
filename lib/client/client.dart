import 'dart:convert';

import 'package:dio/dio.dart';

import 'package:weatherapp/model/model.dart';

class WeatherApiClient{
 Future<WeatherModel> request() async {
  String url = "https://api.open-meteo.com/v1/forecast?latitude=20.5937&longitude=78.9629&current_weather=true&hourly=temperature_2m,relativehumidity_2m,windspeed_10m";
  Response response = await Dio().get(url);
  final parseData = jsonDecode(response.toString());
  final weather = WeatherModel.fromJson(parseData);
  return weather;
 }
}