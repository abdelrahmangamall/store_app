import '../helper/api.dart';
import '../models/productModel.dart';

class updateProductService{
  Future<productModel>  update({
    required String title,
    required String price,
    required String description,
    required String image,
    required String category,
    required dynamic id
  })  async{
    print('product id = $id');
    Map<String,dynamic> data= await
    api().put(url: 'https://fakestoreapi.com/products/$id', body: {
     // 'id':id,
      'title': title,
      'price': price,
      'description': description,
      'image':image,
      'category': category});
    return productModel.fromJson(data);
  }
}