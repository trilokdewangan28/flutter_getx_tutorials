import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/MyHomePage.dart';
import 'package:getx_tutorial/helper/init_controller.dart' as di;
import 'package:getx_tutorial/helper/init_dependency.dart';

void main()async {
  //WidgetsFlutterBinding.ensureInitialized();        
  //await di.init();                          // initialize the depency getx controller
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: InitDep(), // initialize the depency getx controller
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage()
    );
  }
}
