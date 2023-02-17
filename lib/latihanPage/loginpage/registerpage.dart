// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:apk1/latihanPage/loginpage/controller.dart';
import 'package:apk1/latihanPage/loginpage/loginpage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class registerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(loginController());
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 13),
          child: Column(
            children: [
              const SizedBox(
                height: 56.0,
              ),
              Center(
                child: Image.asset(
                  "assets/image 1.png",
                  height: 107,
                  width: 107,
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(
                height: 80.0,
              ),
              Text(
                'Daftar',
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              const SizedBox(
                height: 80.0,
              ),
              TextField(
                controller: controller.username,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Useraname',
                  hintStyle: const TextStyle(color: Colors.black),
                  fillColor: Colors.white,
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              const SizedBox(
                height: 23.0,
              ),
              TextField(
                controller: controller.pw,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Password',
                  hintStyle: const TextStyle(color: Colors.black),
                  fillColor: Colors.white,
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              const SizedBox(
                height: 41.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Punya akun? ',
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => loginpage(),
                      ),
                    ),
                    child: Text(
                      'Login ',
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(child: SizedBox()),
              GestureDetector(
                onTap: () => controller.login(),
                child: Container(
                  height: 54,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xffFEFE00),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                    child: Text(
                      'Daftar',
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
