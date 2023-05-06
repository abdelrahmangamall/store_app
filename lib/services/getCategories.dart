import 'dart:convert';
import 'package:store_app/models/productModel.dart';
import 'package:http/http.dart' as http;

import '../helper/api.dart';

class getCategories{

  Future<List<productModel>>  getAllCategories({required String categoryName})
  async {
    List<dynamic> data  = await
    api().get(url: 'https://fakestoreapi.com/products/category/$categoryName');

          List<productModel> productList = [];
          for (int i = 0; i < data.length; i++) {
            productList.add(productModel.fromJson(data[i]),);
          }
          return productList;
     }
}