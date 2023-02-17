// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:apk1/latihanPage/firebase/login.dart';
import 'package:apk1/latihanPage/loginpage/loginpage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class mainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'Berhasil Login',
              style: const TextStyle(fontSize: 40),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              FirebaseAuth.instance.signOut();
              Get.to(firebase());
            },
            child: Text('LogOut'),
          )
        ],
      ),
    );
  }
}
