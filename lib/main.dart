import 'package:assignment_ctrends/model/productpayment.dart';
import 'package:assignment_ctrends/screen/card_screen.dart';
import 'package:assignment_ctrends/screen/homepage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final ProductPaymentModel productPaymentModel =
      Get.put(ProductPaymentModel());
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
