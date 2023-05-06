import 'package:store_app/helper/api.dart';
import 'package:store_app/models/productModel.dart';

class addProduct {
  Future<productModel>  add({
    required String title,
    required String price,
    required String description,
    required String image,
    required String category})  async{
      Map<String,dynamic> data= await
      api().post(url: 'https://fakestoreapi.com/products', body: {
    'title': title,
    'price': price,
    'description': description,
    'image':image,
    'category': category});
      return productModel.fromJson(data);
  }
}