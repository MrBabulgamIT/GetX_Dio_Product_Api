import 'package:assignment_ctrends/nav_bar/order_page.dart';
import 'package:assignment_ctrends/nav_bar/profile_page.dart';
import 'package:assignment_ctrends/widget/colorr.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Nav_Drawer extends StatelessWidget {
  const Nav_Drawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            // ignore: sort_child_properties_last
            child: Stack(
              children: [
                Positioned(
                    bottom: 5,
                    left: 0,
                    right: 0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Mekup Shop ",
                          style: GoogleFonts.lobster(
                            fontWeight: FontWeight.w600,
                            fontSize: 30,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "A Trusted Shop ",
                          style: GoogleFonts.lobster(
                              fontWeight: FontWeight.w600,
                              fontSize: 25,
                              color: cPrimaryColor),
                        ),
                      ],
                    )),
              ],
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/2.webp"), fit: BoxFit.cover),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.house,
            ),
            title: Text(
              'Home Page',
              style: GoogleFonts.roboto(
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
            ),
            onTap: () {
              Get.snackbar(
                  dismissDirection: DismissDirection.down,
                  "Home is CLicked",
                  "");
            },
          ),
          SizedBox(
            height: 2,
          ),
          Divider(
            height: 1,
            thickness: 1,
            endIndent: 10,
            indent: 10,
            color: Colors.yellow,
          ),
          SizedBox(
            height: 2,
          ),
          ListTile(
            leading: Icon(Icons.shopping_cart),
            title: Text(
              'Order Page',
              style: GoogleFonts.roboto(
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
            ),
            onTap: () {
              Get.to(OrderPage());
            },
          ),
          SizedBox(
            height: 2,
          ),
          Divider(
            height: 1,
            thickness: 1,
            endIndent: 10,
            indent: 10,
            color: Colors.yellow,
          ),
          SizedBox(
            height: 2,
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text(
              'Profile',
              style: GoogleFonts.roboto(
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
            ),
            onTap: () {
              Get.to(ProfilePage());
            },
          ),
          SizedBox(
            height: 2,
          ),
          Divider(
            height: 1,
            thickness: 1,
            endIndent: 10,
            indent: 10,
            color: Colors.yellow,
          ),
          SizedBox(
            height: 2,
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text(
              'Settings',
              style: GoogleFonts.roboto(
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
            ),
            onTap: () {
              Get.snackbar(
                  dismissDirection: DismissDirection.down,
                  "Settings is CLicked",
                  "");
            },
          ),
          SizedBox(
            height: 2,
          ),
          Divider(
            height: 1,
            thickness: 1,
            endIndent: 10,
            indent: 10,
            color: Colors.yellow,
          ),
          SizedBox(
            height: 2,
          ),
          ListTile(
            leading: Icon(Icons.share),
            title: Text(
              'Share',
              style: GoogleFonts.roboto(
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
            ),
            onTap: () {
              Get.snackbar(
                  dismissDirection: DismissDirection.down,
                  "Share is CLicked",
                  "");
            },
          ),
          SizedBox(
            height: 2,
          ),
          Divider(
            height: 1,
            thickness: 1,
            endIndent: 10,
            indent: 10,
            color: Colors.yellow,
          ),
          SizedBox(
            height: 2,
          ),
          ListTile(
            leading: Icon(Icons.feedback),
            title: Text(
              'Feedback',
              style: GoogleFonts.roboto(
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
            ),
            onTap: () {
              Get.snackbar(
                  dismissDirection: DismissDirection.down,
                  "Feedback is CLicked",
                  "");
            },
          ),
          SizedBox(
            height: 2,
          ),
          Divider(
            height: 1,
            thickness: 1,
            endIndent: 10,
            indent: 10,
            color: Colors.yellow,
          ),
          SizedBox(
            height: 2,
          ),
          ListTile(
            leading: Icon(Icons.feedback),
            title: Text(
              'contact  Us',
              style: GoogleFonts.roboto(
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
            ),
            onTap: () {
              Get.snackbar(
                  dismissDirection: DismissDirection.down,
                  "Contact  is CLicked",
                  "");
            },
          ),
        ],
      ),
    );
  }
}
