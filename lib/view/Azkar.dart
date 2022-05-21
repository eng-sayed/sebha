import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sebha/constant.dart';

class Azkar extends StatelessWidget {
  Azkar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(Icons.arrow_back_rounded)),
          centerTitle: true,
          title: Text(
            'فضل الذكر',
            textDirection: TextDirection.rtl,
          ),
          backgroundColor: Colors.teal,
        ),
        body: ListView.builder(
          itemBuilder: ((context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        border: Border.all(color: Colors.teal, width: 2)),
                    padding: EdgeInsets.all(10),
                    child: Text(
                      azkar[index],
                      textDirection: TextDirection.rtl,
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ],
              ),
            );
          }),
          itemCount: azkar.length,
        ));
  }
}
