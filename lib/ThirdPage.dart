import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/MyHomePage.dart';
import 'package:getx_tutorial/controllers/list_controller.dart';

import 'controllers/TapController.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    TapController controller = Get.find();
    ListController listController = Get.find();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        title: Text('third page'),
      ),
      body: Container(
        child: Column(
          children: [
            GetBuilder<TapController>(builder: (_) {
              return Container(
                  margin: EdgeInsets.all(10),
                  width: double.maxFinite,
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFF89dad0)),
                  child: Center(
                    child: Text(
                      'x value is : ${controller.x.toString()}',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ));
            }),
            Obx((){
              return Container(
                  margin: EdgeInsets.all(10),
                  width: double.maxFinite,
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFF89dad0)),
                  child: Center(
                    child: Text(
                      'y value is : ${controller.y.value.toString()}',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ));
            }),
            Obx((){
              return Container(
                  margin: EdgeInsets.all(10),
                  width: double.maxFinite,
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFF89dad0)),
                  child: Center(
                    child: Text(
                      'total is: ${controller.z.value.toString()}',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ));
            }),
           Obx((){
             return Container(
                 margin: EdgeInsets.all(10),
                 width: double.maxFinite,
                 height: 100,
                 decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(20),
                     color: Color(0xFF89dad0)),
                 child: Center(
                   child: Text(
                     'list is ${listController.list.value.toString()}',
                     style: TextStyle(fontSize: 20, color: Colors.white),
                   ),
                 ));
           }),
            GestureDetector(
              onTap: () {
                Get.to(() => MyHomePage());
              },
              child: Container(
                  margin: EdgeInsets.all(10),
                  width: double.maxFinite,
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFF89dad0)),
                  child: Center(
                    child: Text(
                      'go to home page',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
