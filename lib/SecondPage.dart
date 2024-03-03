import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/ThirdPage.dart';
import 'package:getx_tutorial/controllers/list_controller.dart';

import 'controllers/TapController.dart';
class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    TapController controller = Get.find();
    ListController listController = Get.find();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            Get.back();
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        title: Text('Second page'),
      ),
      body: Container(
        child: Column(
          children: [
            Obx((){
              return Container(
                  margin: EdgeInsets.all(10),
                  width: double.maxFinite,
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFF89dad0)
                  ),
                  child: Center(
                    child: Text(
                      'total of x and y is ${controller.z.value.toString()}',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white
                      ),
                    ),
                  )
              );
            }),
            
            Obx((){
            return  Container(
                  margin: EdgeInsets.all(10),
                  width: double.maxFinite,
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFF89dad0)
                  ),
                  child: Center(
                    child: Text(
                      "list value is ${listController.list.value.toString()}",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white
                      ),
                    ),
                  )
              );
            }),
            GestureDetector(
              onTap: (){
                listController.setValue(controller.z.value);
              },
              child: Container(
                  margin: EdgeInsets.all(10),
                  width: double.maxFinite,
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFF89dad0)
                  ),
                  child: Center(
                    child: Text(
                      'assign total value to the list',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white
                      ),
                    ),
                  )
              ),
            ),

            GestureDetector(
              onTap: (){
                Get.to(()=>ThirdPage());
              },
              child: Container(
                  margin: EdgeInsets.all(10),
                  width: double.maxFinite,
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFF89dad0)
                  ),
                  child: Center(
                    child: Text(
                      'go to third page',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white
                      ),
                    ),
                  )
              ),
            ),
          ],
        ),
      ),
    );
  }
}
