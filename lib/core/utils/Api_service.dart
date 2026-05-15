import 'package:dio/dio.dart';

class ApiService {
  final baseUrl = 'https://www.googleapis.com/books/v1/';
  final Dio dio;
  ApiService(this.dio);

  Future<Map<String, dynamic>> get({required String endPoint}) async {
    var response = await dio.get('$baseUrl$endPoint');
    return response.data;
  }
}




// UI
// ↓
// عايز بيانات
// ↓
// Cubit يطلبها
// ↓
// Repo يجيبها
// ↓
// ApiService يكلم السيرفر
// ↓
// السيرفر يرجع JSON
// ↓
// Model يتحول
// ↓
// UI تعرض البيانات