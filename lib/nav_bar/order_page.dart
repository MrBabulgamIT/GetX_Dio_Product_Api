import 'package:assignment_ctrends/screen/nav_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Nav_Drawer(),
        backgroundColor: Colors.black12,
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(
            "Order Page",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Center(
          child: Text(
            "Order Page",
            style:
                GoogleFonts.lobster(fontSize: 30, fontWeight: FontWeight.w600),
          ),
        ));
  }
}
