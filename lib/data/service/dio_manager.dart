// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dio/dio.dart';

class DioManager {
  late Dio service;
  static const String baseURL = "https://nootebook.000webhostapp.com/";

  DioManager(){
    service = Dio(
      BaseOptions(baseUrl: baseURL),
    );
  }

}
