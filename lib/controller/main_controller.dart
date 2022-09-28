import 'package:assignment_ctrends/controller/product_controller.dart';
import 'package:assignment_ctrends/model/productpayment.dart';
import 'package:get/get.dart';

class BaseController {
  final productCon = Get.put(ProductController());
}
