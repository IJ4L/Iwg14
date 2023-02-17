// ignore_for_file: prefer_const_constructors

import 'package:apk1/latihanPage/stateManage/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class statePage extends StatelessWidget {
  final controller = Get.put(stateController());
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            'StateManagement',
            style: TextStyle(
              color: controller.swit.value ? Colors.blue : Colors.black,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 150,
                width: 150,
                color: controller.swit.value ? Colors.blue : Colors.black,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Rb'),
                  Switch(
                    value: controller.swit.value,
                    onChanged: (value) => controller.click(value),
                  ),
                  Text('Lb'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
