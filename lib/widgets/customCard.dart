import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:store_app/models/productModel.dart';
import 'package:store_app/pages/updateProductPage.dart';
class customCard extends StatelessWidget{
  productModel product;
   customCard({required this.product});
  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, updateProductPage.id,arguments: product);
      },
     child : Stack(
      clipBehavior: Clip.none,
      children: [
        Container(

          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  blurRadius: 10,
                  color: Colors.grey.withOpacity(.2),
                  spreadRadius: 0,
                  offset: Offset(0,0),
                )
              ]
          ),
          child: Card(
            elevation: 20,
            color: Colors.white,
            child : Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(product.title.substring(0,8),
                    style: TextStyle(
                      color: Colors.black26,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 3,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                     r'$' '${product.price.toString()}',
                        style: TextStyle(
                          //   color: Colors.black26,
                          fontSize: 16,
                        ),
                      ),
                      //  SizedBox(width: 20,),
                      Icon(Icons.favorite,
                        color: Colors.red,)
                    ],

                  ),
                ],

              ),
            ),
          ),
        ),
        Positioned(
          bottom: 62,
          right: 30,
          child:
          Image.network(
            product.image,
            height: 100,
            width: 100,
          ),
        ),
      ],
    ),
    );
  }

}