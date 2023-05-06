import 'dart:convert';
import 'package:http/http.dart' as http;
import '../helper/api.dart';
class allCategories {
  Future<List<dynamic>> getCategories()  async {
    List<dynamic> data  = await
   api().get(url: 'https://fakestoreapi.com/products/categories');
      return data;
  }
}