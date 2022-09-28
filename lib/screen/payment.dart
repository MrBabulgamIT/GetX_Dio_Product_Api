import 'dart:ui';

import 'package:assignment_ctrends/controller/main_controller.dart';
import 'package:assignment_ctrends/model/product.dart';
import 'package:assignment_ctrends/model/productpayment.dart';
import 'package:assignment_ctrends/screen/card_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Payment_Page extends StatefulWidget with BaseController {
  final Product? products;

  Payment_Page({
    Key? key,
    required this.products,
  }) : super(key: key);

  @override
  State<Payment_Page> createState() => _Payment_PageState();
}

class _Payment_PageState extends State<Payment_Page> {
  ProductPaymentModel paymentModel = Get.find<ProductPaymentModel>();

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
        ),
        title: Center(
          child: Text("My Card",
              style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                  color: Colors.black)),
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.white),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                      flex: 2,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.network(
                              widget.products!.image_link.toString()))),
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Text(widget.products!.name.toString(),
                            maxLines: 1,
                            style: GoogleFonts.roboto(
                                fontWeight: FontWeight.bold, fontSize: 20)),
                        SizedBox(
                          height: 7,
                        ),
                        Text(widget.products!.brand.toString(),
                            maxLines: 1,
                            style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w500, fontSize: 18)),
                        SizedBox(
                          height: 7,
                        ),
                        Text("\$${widget.products!.price.toString()}",
                            maxLines: 1,
                            style: GoogleFonts.roboto(
                                fontWeight: FontWeight.bold, fontSize: 20)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            InkWell(
                              onTap: () {
                                paymentModel.decress();

                                setState(() {});
                              },
                              child: Container(
                                  height: 40,
                                  width: 40,
                                  padding: EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 10),
                                  margin: EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 10),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                          offset: Offset(0, 15),
                                          blurRadius: 22,
                                          color:
                                              Colors.white.withOpacity(0.52)),
                                      BoxShadow(
                                          offset: Offset(-15, -15),
                                          blurRadius: 20,
                                          color: Colors.white),
                                    ],
                                  ),
                                  child: Center(
                                      child: Image(
                                    image: AssetImage("images/minus.png"),
                                    fit: BoxFit.cover,
                                  ))),
                            ),
                            Obx(() {
                              return Text(
                                "${paymentModel.num}",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 20),
                              );
                            }),
                            InkWell(
                              onTap: () {
                                paymentModel.incress();

                                setState(() {});
                              },
                              child: Container(
                                  height: 40,
                                  width: 40,
                                  padding: EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 10),
                                  margin: EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 10),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                          offset: Offset(0, 15),
                                          blurRadius: 22,
                                          color:
                                              Colors.white.withOpacity(0.52)),
                                      BoxShadow(
                                          offset: Offset(-15, -15),
                                          blurRadius: 20,
                                          color: Colors.white),
                                    ],
                                  ),
                                  child: Center(
                                      child: Image(
                                    image: AssetImage("images/pluss.png"),
                                    fit: BoxFit.cover,
                                  ))),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Total ",
                    style: GoogleFonts.lobster(
                        fontSize: 20, fontWeight: FontWeight.w400)),
                Text("\$${widget.products!.price.toString()}",
                    style: GoogleFonts.lobster(
                        fontSize: 20, fontWeight: FontWeight.w400)),
              ],
            ),
          ),
          Divider(
            color: Colors.black12,
            height: 2,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Sub Total ",
                    style: GoogleFonts.lobster(
                        fontSize: 20, fontWeight: FontWeight.w400)),
                Text("\$00",
                    style: GoogleFonts.lobster(
                        fontSize: 20, fontWeight: FontWeight.w400)),
              ],
            ),
          ),
          Divider(
            color: Colors.black12,
            height: 2,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Total ",
                    style: GoogleFonts.lobster(
                        fontSize: 20, fontWeight: FontWeight.w400)),
                Text("\$${widget.products!.price.toString()}",
                    style: GoogleFonts.lobster(
                        fontSize: 20, fontWeight: FontWeight.w400)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: GestureDetector(
              onTap: () {
                Get.bottomSheet(
                  bottomsheet(height: height, width: width),
                );
              },
              child: Container(
                  padding: EdgeInsets.all(7),
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromARGB(255, 14, 225, 240),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 10,
                        offset: Offset(0, 5), //
                      )
                    ],
                  ),
                  child: Center(
                    child: Text("Cheekout",
                        style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            fontSize: 18)),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
