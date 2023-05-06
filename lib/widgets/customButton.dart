import 'package:flutter/material.dart';

class customBotton extends StatelessWidget{
  String? name;
  customBotton({required this.onTap, this.name});
  VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
   return GestureDetector(
     onTap: onTap,
     child: Container(
       decoration: BoxDecoration(
         color: Colors.grey,
         borderRadius:BorderRadius.circular(15),
       ),
       width: double.infinity,
       height: 60,
       child: Center(
            child: Text('$name',


            ),
       ),
     ),
   );
  }

}