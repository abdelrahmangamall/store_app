import 'dart:convert';
import 'package:http/http.dart' as http;
import '../helper/api.dart';
import '../models/productModel.dart';

class allProductsService {
  Future<List<productModel>> getAllProducts() async {
    List<dynamic> data =
        await api().get(url:'https://fakestoreapi.com/products');
    List<productModel> productList = [];
    for (int i = 0; i < data.length; i++) {
      productList.add(
        productModel.fromJson(data[i]),
      );
    }
    return productList;
  }
}
