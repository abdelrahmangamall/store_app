import 'package:flutter/material.dart';

class customText extends StatelessWidget{
  @override
  String? hintText;
  bool? obscure;
  TextInputType? inputType;
  Function(String)? onChanged;
  customText({this.obscure = false,this.onChanged ,required this.hintText,required this.inputType});

  Widget build(BuildContext context) {

return TextFormField(
  obscureText: obscure!,
  onChanged: onChanged,
  keyboardType:inputType,
  decoration:InputDecoration(
  hintText: '$hintText',
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.black,
    ),
    borderRadius: BorderRadius.circular(16),
  ),
  border: OutlineInputBorder(
    borderSide: BorderSide(),
    borderRadius: BorderRadius.circular(16),
  ),
) ,
);
  }


}