import 'package:assignment_ctrends/screen/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class GetXProperty extends StatefulWidget {
  const GetXProperty({Key? key}) : super(key: key);

  @override
  State<GetXProperty> createState() => _GetXPropertyState();
}

class _GetXPropertyState extends State<GetXProperty> {
  double dw = Get.size.width;
  double dh = Get.size.width;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("GetX Property"), leading: Icon(Icons.menu)),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.arrow_forward),
          onPressed: () {
            Get.to(
              HomePage(),
            );
          }),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              Get.snackbar("Congrress", "Your Information added",
                  margin: EdgeInsets.all(30),
                  dismissDirection: DismissDirection.down,
                  icon: Icon(Icons.thumb_up),
                  snackPosition: SnackPosition.BOTTOM,
                  backgroundColor: Colors.yellow);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: 110,
                  padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                  child: Text("SnakBar",
                      style: TextStyle(
                        fontSize: 15,
                        color: Color.fromARGB(255, 10, 10, 10),
                        fontWeight: FontWeight.w700,
                      )),
                  decoration: BoxDecoration(
                      color: Colors.greenAccent,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(95),
                        topLeft: Radius.circular(95),
                        bottomRight: Radius.circular(200),
                      )),
                ),
                Icon(Icons.login),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () {
              Get.to(HomePage());
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: 110,
                  padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                  child: Text("Page Route",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color.fromARGB(255, 10, 10, 10),
                        fontWeight: FontWeight.w700,
                      )),
                  decoration: BoxDecoration(
                      color: Colors.greenAccent,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(95),
                        topLeft: Radius.circular(95),
                        bottomRight: Radius.circular(200),
                      )),
                ),
                Icon(Icons.login),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () {
              Get.back();
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: Get.height / 3.5,
                  padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                  child: Text("Page Route back",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color.fromARGB(255, 10, 10, 10),
                        fontWeight: FontWeight.w700,
                      )),
                  decoration: BoxDecoration(
                      color: Colors.greenAccent,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(95),
                        topLeft: Radius.circular(95),
                        bottomRight: Radius.circular(200),
                      )),
                ),
                Icon(Icons.login_outlined),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () {
              Get.defaultDialog(
                  barrierDismissible: false,
                  title: "Are you sure?",
                  content: Text("Deleted this information !"),
                  actions: [
                    ElevatedButton.icon(
                      label: Text("No"),
                      style: ElevatedButton.styleFrom(primary: Colors.red),
                      onPressed: () {
                        Get.back();
                      },
                      icon: Icon(Icons.thumb_down),
                    ),
                    ElevatedButton.icon(
                      label: Text("Yes"),
                      style: ElevatedButton.styleFrom(primary: Colors.green),
                      onPressed: () {
                        Get.to(HomePage());
                      },
                      icon: Icon(Icons.thumb_up),
                    ),
                  ]);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: 110,
                  padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                  child: Text("Dialog Box",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color.fromARGB(255, 10, 10, 10),
                        fontWeight: FontWeight.w700,
                      )),
                  decoration: BoxDecoration(
                      color: Colors.greenAccent,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(95),
                        topLeft: Radius.circular(95),
                        bottomRight: Radius.circular(200),
                      )),
                ),
                Icon(Icons.login),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () {
              Get.bottomSheet(Container(
                height: Get.height * 6,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                ),
                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(Icons.home),
                      title: Text("Home"),
                      onTap: () {
                        Get.to(HomePage());
                      },
                    ),
                    Divider(
                      indent: 10,
                      color: Colors.yellow,
                      endIndent: 10,
                      height: 2,
                    ),
                    ListTile(
                      leading: Icon(Icons.settings),
                      title: Text("Settings"),
                    ),
                    Divider(
                      indent: 10,
                      height: 2,
                      color: Colors.yellow,
                      endIndent: 10,
                    ),
                    ListTile(
                      leading: Icon(Icons.share),
                      title: Text("Share"),
                    ),
                    Divider(
                      height: 2,
                      indent: 10,
                      color: Colors.yellow,
                      endIndent: 10,
                    ),
                    ListTile(
                      leading: Icon(Icons.feedback),
                      title: Text("Feedback"),
                    ),
                    Divider(
                      height: 2,
                      indent: 10,
                      color: Colors.yellow,
                      endIndent: 10,
                    ),
                    ListTile(
                      leading: Icon(Icons.person),
                      onTap: () {
                        Get.to(HomePage());
                      },
                      title: Text("Person"),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton.icon(
                            style:
                                ElevatedButton.styleFrom(primary: Colors.red),
                            onPressed: () {
                              Get.back();
                            },
                            icon: Icon(Icons.thumb_down),
                            label: Text("No")),
                        SizedBox(
                          width: 10,
                        ),
                        ElevatedButton.icon(
                            style:
                                ElevatedButton.styleFrom(primary: Colors.green),
                            onPressed: () {
                              Get.to(HomePage());
                            },
                            icon: Icon(Icons.thumb_up),
                            label: Text("Yes")),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    )
                  ],
                ),
              ));
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: 130,
                  padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                  child: Text("Bottom Sheet",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color.fromARGB(255, 10, 10, 10),
                        fontWeight: FontWeight.w700,
                      )),
                  decoration: const BoxDecoration(
                      color: Colors.greenAccent,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(95),
                        topLeft: Radius.circular(95),
                        bottomRight: Radius.circular(200),
                      )),
                ),
                Icon(Icons.login),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () {
              Get.changeTheme(
                  Get.isDarkMode ? ThemeData.light() : ThemeData.dark());
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: 130,
                  padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                  child: Text("Theme Change",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color.fromARGB(255, 10, 10, 10),
                        fontWeight: FontWeight.w700,
                      )),
                  decoration: const BoxDecoration(
                      color: Colors.greenAccent,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(95),
                        topLeft: Radius.circular(95),
                        bottomRight: Radius.circular(200),
                      )),
                ),
                Icon(Icons.check_circle)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
