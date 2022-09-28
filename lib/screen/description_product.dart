import 'package:assignment_ctrends/controller/main_controller.dart';
import 'package:assignment_ctrends/model/product.dart';
import 'package:assignment_ctrends/screen/payment.dart';
import 'package:assignment_ctrends/widget/colorr.dart';
import 'package:assignment_ctrends/widget/product_color.dart';
import 'package:assignment_ctrends/widget/product_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Description_Product extends StatelessWidget with BaseController {
  final Product? productss;
  Description_Product({required this.productss});

  @override
  Widget build(BuildContext context) {
    double height = Get.height;
    double width = Get.width;
    return Scaffold(
        backgroundColor: Colors.black12,
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: InkWell(
              onTap: () {
                Get.back();
              },
              child: Container(
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
                child: Image(image: AssetImage("images/arrow.png")),
              ),
            )),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(productss!.name.toString(),
                          maxLines: 1,
                          textAlign: TextAlign.center,
                          style: GoogleFonts.roboto(
                              fontWeight: FontWeight.bold, fontSize: 20)),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "\$${productss!.price.toString()}",
                        style: GoogleFonts.roboto(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: height * 0.4,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      image: DecorationImage(
                          image: NetworkImage(productss!.image_link.toString()),
                          fit: BoxFit.cover)),
                ),
                SizedBox(
                  height: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Select Size",
                      style: GoogleFonts.roboto(
                          fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Product_Size(),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Select Color",
                      style: GoogleFonts.roboto(
                          fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Container(
                        color: Colors.transparent,
                        child: Row(
                          children: [
                            ProductColor(color: Colors.pink[200]),
                            ProductColor(color: Colors.pink),
                            ProductColor(
                                color: Color.fromARGB(255, 14, 225, 240)),
                            ProductColor(
                                color: Color.fromARGB(255, 243, 33, 33)),
                            ProductColor(
                              color: Colors.pinkAccent,
                            ),
                            ProductColor(
                                color: Color.fromARGB(255, 109, 5, 40)),
                            ProductColor(
                                color: Color.fromARGB(255, 202, 43, 62))
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\$${productss!.price.toString()}",
                      style: GoogleFonts.roboto(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.to(Payment_Page(products: productss));
                      },
                      child: Container(
                          height: 55,
                          padding: EdgeInsets.all(8),
                          width: 110,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 10,
                                  offset: Offset(0, 5), //
                                )
                              ],
                              color: Color.fromARGB(255, 14, 225, 240)),
                          child: Center(
                              child: Text(
                            "Add to card",
                            style: GoogleFonts.roboto(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.w500),
                          ))),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
