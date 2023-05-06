import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:store_app/models/productModel.dart';
import 'package:store_app/services/updateProductsService.dart';
import 'package:store_app/widgets/customButton.dart';
import 'package:store_app/widgets/customTextField.dart';

class updateProductPage extends StatefulWidget {
  static String id = 'update product';

  @override
  State<updateProductPage> createState() => _updateProductPageState();
}

class _updateProductPageState extends State<updateProductPage> {
  String? description, image, proName, price;
  bool isLoading=false;
  @override
  Widget build(BuildContext context) {
    var product = ModalRoute.of(context)!.settings.arguments as productModel;
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text(
            'update product',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                customText(
                  onChanged: (data) {
                    proName = data;
                  },
                  hintText: 'product name',
                  inputType: TextInputType.text,
                ),
                SizedBox(
                  height: 10,
                ),
                customText(
                    onChanged: (data) {
                      description = data;
                    },
                    inputType: TextInputType.text,
                    hintText: 'discription'),
                SizedBox(
                  height: 10,
                ),
                customText(
                  onChanged: (data) {
                    price = data;
                  },
                  hintText: 'price',
                  inputType: TextInputType.number,
                ),
                SizedBox(
                  height: 10,
                ),
                customText(
                  onChanged: (data) {
                    image = data;
                  },
                  hintText: 'image',
                  inputType: TextInputType.text,
                ),
                SizedBox(
                  height: 50,
                ),
                customBotton(
                  name: 'update',
                  onTap: () async {
                    isLoading =true;
                    setState(() {});

                    try {
                      await  updateProduct(product);
                      print('success');
                    } catch (e) {
                      print(e.toString());
                    }
                    isLoading=false;
                    setState(() {  });
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> updateProduct(productModel product) async {
    await updateProductService().update(
        id: product.id,
        title: proName == null ? product.title : proName!,
        price: price == null ? product.price.toString() : price!,
        description: description == null ? product.description : description!,
        image: image == null ? product.image : image!,
        category: product.category,
       );
          isLoading=false;



  }
}
