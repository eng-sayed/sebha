import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sebha/controller/home_controller.dart';
import 'package:sebha/view/Azkar.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        init: HomeController()..firstOpen(),
        builder: ((controller) {
          return Scaffold(
            // drawer: Drawer(
            //   // Add a ListView to the drawer. This ensures the user can scroll
            //   // through the options in the drawer if there isn't enough vertical
            //   // space to fit everything.
            //   child: ListView(
            //     // Important: Remove any padding from the ListView.
            //     padding: EdgeInsets.zero,
            //     children: [
            //       const DrawerHeader(
            //         decoration: BoxDecoration(
            //           color: Colors.blue,
            //         ),
            //         child: Text('Drawer Header'),
            //       ),
            //       ListTile(
            //         title: const Text('Item 1'),
            //         onTap: () {
            //           Get.back();
            //           Get.to(Azkar());
            //         },
            //       ),
            //       ListTile(
            //         title: const Text('Item 2'),
            //         onTap: () {
            //           // Update the state of the app.
            //           // ...
            //         },
            //       ),
            //     ],
            //   ),
            // ),
            appBar: AppBar(
              centerTitle: true,
              title: Text('My Sebha'),
              backgroundColor: Colors.teal,
              leading: IconButton(
                icon: Icon(Icons.menu_book),
                onPressed: () {
                  Get.to(Azkar());
                },
              ),
              actions: [
                IconButton(
                    icon: Icon(
                      controller.isDarkMode!
                          ? Icons.dark_mode
                          : Icons.light_mode,
                      //    color: Colors.white,
                    ),
                    onPressed: () => controller.toggleDarkMode())
              ],
            ),
            body: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                                border:
                                    Border.all(color: Colors.teal, width: 2)),
                            height: 50,
                            width: 290,
                            child: Center(
                              child: Text(
                                controller.count.toString(),
                                style: TextStyle(
                                    fontWeight: FontWeight.w300, fontSize: 22),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          RaisedButton(
                              color: Colors.teal,
                              child: SizedBox(
                                width: 50,
                                height: 50,
                              ),
                              onPressed: () {
                                controller.resetCount();
                              },
                              shape: CircleBorder()),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RaisedButton(
                              color: Colors.teal,
                              child: SizedBox(
                                width: 250,
                                height: 250,
                              ),
                              onPressed: () {
                                controller.increment();
                              },
                              shape: CircleBorder()),
                        ],
                      ),
                    ],
                  ),
                )),
          );
        }));
  }
}
