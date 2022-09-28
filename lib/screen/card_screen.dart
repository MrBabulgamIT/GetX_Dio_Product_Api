import 'dart:js_util';
import 'package:assignment_ctrends/screen/getproperty.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class bottomsheet extends StatelessWidget {
  const bottomsheet({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: height * 0.65,
        width: width * 1,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 15,
              ),
              Text("Card Number",
                  style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w400, fontSize: 17)),
              SizedBox(
                height: 5,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "123456789",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Expair Date",
                            style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w400, fontSize: 17)),
                        SizedBox(
                          height: 5,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: "30-09-2025",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Password",
                            style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w400,
                            )),
                        SizedBox(
                          height: 5,
                        ),
                        TextFormField(
                          keyboardType: TextInputType.visiblePassword,
                          decoration: InputDecoration(
                            hintText: "************",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Name",
                      style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w400,
                      )),
                  SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Md.Jony",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 7,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Address",
                      style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w400,
                      )),
                  SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Mirpur-2,Dhaka",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: InkWell(
                  onTap: () {
                    Get.defaultDialog(
                        barrierDismissible: false,
                        title: "Congratulation",
                        content: Column(
                          children: [
                            Text("You Payment Succesfully Done"),
                            SizedBox(
                              height: 5,
                            ),
                            Text(" Now Are You Back?"),
                          ],
                        ),
                        actions: [
                          ElevatedButton.icon(
                            label: Text("No"),
                            style:
                                ElevatedButton.styleFrom(primary: Colors.red),
                            onPressed: () {
                              Get.back();
                            },
                            icon: Icon(Icons.thumb_down),
                          ),
                          ElevatedButton.icon(
                            label: Text("Yes"),
                            style:
                                ElevatedButton.styleFrom(primary: Colors.green),
                            onPressed: () {
                              Get.to(GetXProperty());
                            },
                            icon: Icon(Icons.thumb_up),
                          ),
                        ]);
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
                        child: Text("Pay Now",
                            style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                                fontSize: 18)),
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
