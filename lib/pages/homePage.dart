import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:store_app/models/productModel.dart';
import 'package:store_app/services/allProductsService.dart';
import 'package:store_app/widgets/customCard.dart';

class homePage extends StatelessWidget {
  static String id = 'homePage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                FontAwesomeIcons.cartShopping,
                color: Colors.black,
              ))
        ],
        centerTitle: true,
        title: Text(
          'clothes',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 10, left: 10, top: 60),
        child: FutureBuilder<List<productModel>>(
          future: allProductsService().getAllProducts(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List<productModel> products = snapshot.data!;
              return GridView.builder(
                  itemCount:products.length,
                  clipBehavior: Clip.none,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1.5,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 60,
                  ),
                  itemBuilder: (context, index) {
                    return customCard(product:products[index]);
                  });
                } else if(snapshot.hasError)  {
               print(snapshot.error);
               return Center(child: CircularProgressIndicator());
            } else {
              return Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }
}
