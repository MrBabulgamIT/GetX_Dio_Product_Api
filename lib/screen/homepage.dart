import 'package:assignment_ctrends/controller/main_controller.dart';
import 'package:assignment_ctrends/controller/product_controller.dart';
import 'package:assignment_ctrends/screen/description_product.dart';
import 'package:assignment_ctrends/widget/colorr.dart';
import 'package:assignment_ctrends/widget/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget with BaseController {
  final ProductController productController = Get.put(ProductController());
  @override
  Widget build(BuildContext context) {
    double height = Get.height;
    double width = Get.width;
    productCon.getUsersData();
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: Image.asset('images/manu.png'),
        ),
        actions: [
          Container(
            height: 65,
            width: 65,
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    offset: Offset(0, 15),
                    blurRadius: 22,
                    color: Colors.white.withOpacity(0.52)),
                BoxShadow(
                    offset: Offset(-15, -15),
                    blurRadius: 20,
                    color: Colors.white),
              ],
            ),
            child: Image(image: AssetImage("images/shopping_cart.png")),
          ),
        ],
      ),
      body: Obx(() {
        if (productController.isLoading.value)
          return Center(child: CircularProgressIndicator());
        else
          // ignore: curly_braces_in_flow_control_structures
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Find Your Product",
                      style: GoogleFonts.lobster(fontSize: 30)),
                  SizedBox(
                    height: 10,
                  ),
                  HeaderWithSearchBox(),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 7,
                          crossAxisSpacing: 10,
                          childAspectRatio: 0.75,
                          mainAxisExtent: height * 0.40),
                      shrinkWrap: true,
                      //physics: BouncingScrollPhysics(),
                      itemCount: productCon.products.length,
                      itemBuilder: (BuildContext context, int index) {
                        final item = productCon.products[index];
                        return InkWell(
                          onTap: () {
                            Get.to(Description_Product(productss: item));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 5,
                                    blurRadius: 10,
                                    offset: Offset(0, 5), //
                                  )
                                ],
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Image.network(
                                    item.image_link.toString(),
                                  ),
                                ),
                                Container(
                                    color: Colors.white,
                                    child: Padding(
                                      padding: EdgeInsets.all(7.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(item.name.toString(),
                                              maxLines: 1,
                                              style: TextStyle(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.w600)),
                                          SizedBox(
                                            height: 2,
                                          ),
                                          Text(
                                            item.brand.toString(),
                                            maxLines: 1,
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.w400,
                                                fontSize: 15),
                                          ),
                                          SizedBox(
                                            height: 2,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "\$" + item.price.toString(),
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 17),
                                              ),
                                              Text(
                                                "****",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 22),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    )),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          );
      }),
    );
  }
}
