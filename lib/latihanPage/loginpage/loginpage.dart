// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:apk1/latihanPage/loginpage/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class loginpage extends StatelessWidget {
  final controller = Get.put(loginController());
  @override
  Widget build(BuildContext context) {
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
                'Login',
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
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.yellow),
                    borderRadius: BorderRadius.all(
                      Radius.circular(8),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 2,
                      color: Colors.yellow,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.remove_red_eye,
                      color: Colors.yellow,
                    ),
                  ),
                  // floatingLabelBehavior: FloatingLabelBehavior.always,
                  contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  filled: true,
                  fillColor: Color.fromRGBO(28, 28, 28, 1),
                  hintText: 'Username',
                  hintStyle: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(
                height: 23.0,
              ),
              TextField(
                controller: controller.pw,
                decoration: InputDecoration(
                  hintText: 'Password',
                  hintStyle: const TextStyle(color: Colors.black),
                  fillColor: Colors.white,
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  border: OutlineInputBorder(
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
                    'Tidak punya akun? ',
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Get.toNamed('/regis'),
                    child: Text(
                      'Daftar ',
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
                      'Login',
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
