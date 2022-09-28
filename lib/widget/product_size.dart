import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Product_Size extends StatelessWidget {
  const Product_Size({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Container(
              height: 45,
              width: 40,
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 15),
                      blurRadius: 22,
                      color: Colors.black12.withOpacity(0.52)),
                  BoxShadow(
                      offset: Offset(-15, -15),
                      blurRadius: 20,
                      color: Colors.black12),
                ],
              ),
              child: Center(
                  child: Text("S",
                      style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w600, fontSize: 17)))),
          SizedBox(
            width: 5,
          ),
          Container(
              height: 45,
              width: 40,
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 15),
                      blurRadius: 22,
                      color: Colors.black12.withOpacity(0.52)),
                  BoxShadow(
                      offset: Offset(-15, -15),
                      blurRadius: 20,
                      color: Colors.black12),
                ],
              ),
              child: Center(
                  child: Text("M",
                      style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w600, fontSize: 17)))),
          SizedBox(
            width: 5,
          ),
          Container(
              height: 45,
              width: 40,
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 15),
                      blurRadius: 22,
                      color: Colors.black12.withOpacity(0.52)),
                  BoxShadow(
                      offset: Offset(-15, -15),
                      blurRadius: 20,
                      color: Colors.black12),
                ],
              ),
              child: Center(
                  child: Text("L",
                      style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w600, fontSize: 17)))),
          SizedBox(
            width: 5,
          ),
          Container(
              height: 45,
              width: 40,
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 15),
                      blurRadius: 22,
                      color: Colors.black12.withOpacity(0.52)),
                  BoxShadow(
                      offset: Offset(-15, -15),
                      blurRadius: 20,
                      color: Colors.black12),
                ],
              ),
              child: Center(
                  child: Text("XL",
                      style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w600, fontSize: 17)))),
          SizedBox(
            width: 5,
          ),
          Container(
              height: 45,
              width: 55,
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 15),
                      blurRadius: 22,
                      color: Colors.black12.withOpacity(0.52)),
                  BoxShadow(
                      offset: Offset(-15, -15),
                      blurRadius: 20,
                      color: Colors.black12),
                ],
              ),
              child: Center(
                  child: Text("XXL",
                      style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w600, fontSize: 17)))),
          SizedBox(
            width: 5,
          ),
        ],
      ),
    );
  }
}
