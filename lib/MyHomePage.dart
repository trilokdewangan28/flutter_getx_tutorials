import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/FirstPage.dart';
import 'package:getx_tutorial/SecondPage.dart';
import 'package:getx_tutorial/controllers/TapController.dart';
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    TapController controller = Get.find();
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
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
                      'x + y = ${controller.z.value.toString()}',
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
                Get.to(()=>FirstPage());
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
                      'go first page increase x and y and sum',
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
                Get.to(()=>SecondPage());
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
                      'Go to second page',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white
                      ),
                    ),
                  )
              ),
            ),
            
            
            GestureDetector(
              onTap: (){},
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
                      'hii there',
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
