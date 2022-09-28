import 'package:assignment_ctrends/controller/main_controller.dart';
import 'package:assignment_ctrends/controller/product_controller.dart';
import 'package:get/get.dart';

class ProductPaymentModel extends GetxController {
  var num = 1.obs;
  var sumcost;
  ProductController prodductController = ProductController();

  incress() {
    num = num + 1;
  }

  decress() {
    if (num > 1) {
      num = num - 1;
    } else {
      num = num;
    }
  }
}
