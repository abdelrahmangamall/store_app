import 'package:flutter/material.dart';
import 'package:store_app/pages/homePage.dart';
import 'package:store_app/pages/updateProductPage.dart';

void main() {
  runApp(const storeApp());
}

class storeApp extends StatelessWidget {
  const storeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      routes: {
        homePage.id: (context) => homePage(),
        updateProductPage.id: (context) => updateProductPage(),
      },
      initialRoute: homePage.id,
    );
  }
}
