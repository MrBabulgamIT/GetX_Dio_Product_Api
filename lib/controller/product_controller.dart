import 'package:assignment_ctrends/model/product.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart';

class ProductController extends GetxController {
  var isLoading = true.obs;
  final products = RxList<Product>([]);

  final _dio = Dio();

  void getUsersData() async {
    isLoading(true);
    try {
      final res = await _dio.get(
          'https://makeup-api.herokuapp.com/api/v1/products.json?brand=maybelline&fbclid=IwAR1FKLd2ryJMwC3XE0sQVpUmEc7FZufffGRCNHAQs1hHkbNx194osVeY_iI');

      final List<Product> productData = res.data
          .map((json) => Product.fromJson(json))
          .toList()
          .cast<Product>();
      print("Jony: ${productData[1].name}");

      products.addAll(productData);

      if (res.statusCode == 200) {
        products.addAll(productData);
        print(productData);
        print(products.length);
        isLoading(false);
      }
    } catch (e) {
      print(e);
      isLoading(false);
    }
  }
}
