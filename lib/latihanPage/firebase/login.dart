// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:apk1/latihanPage/firebase/mainpage.dart';
import 'package:apk1/latihanPage/firebase/regis.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class firebase extends StatefulWidget {
  @override
  State<firebase> createState() => _firebaseState();
}

class _firebaseState extends State<firebase> {
  final _fromkey = GlobalKey<FormState>();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _pw = TextEditingController();

  Future<dynamic> login() async {
    if (_fromkey.currentState!.validate()) {
      try {
        await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: _email.text,
          password: _pw.text,
        );
        Get.to(mainPage());
      } catch (e) {}
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        centerTitle: true,
      ),
      body: Container(
        height: Get.height,
        width: Get.width,
        padding: EdgeInsets.all(8),
        child: buildFromLogin(),
      ),
    );
  }

  Widget buildFromLogin() {
    return Form(
      key: _fromkey,
      child: Column(
        children: [
          TextFormField(
            controller: _email,
            validator: (value) {
              if (value!.isEmpty) {
                return 'email salah';
              }
            },
            scrollPadding: EdgeInsets.all(20),
            decoration: InputDecoration(
              hintText: 'Masukkan email',
              contentPadding: EdgeInsets.symmetric(horizontal: 16),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blueAccent),
                borderRadius: BorderRadius.circular(100),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey,
                ),
                borderRadius: BorderRadius.circular(100),
              ),
            ),
          ),
          const SizedBox(
            height: 8.0,
          ),
          TextFormField(
            controller: _pw,
            validator: (value) {
              if (value!.isEmpty || value.length < 7) {
                return 'password salah';
              }
            },
            scrollPadding: EdgeInsets.symmetric(horizontal: 16),
            decoration: InputDecoration(
              hintText: 'Masukkan Password',
              contentPadding: EdgeInsets.symmetric(horizontal: 16),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blueAccent),
                borderRadius: BorderRadius.circular(100),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey,
                ),
                borderRadius: BorderRadius.circular(100),
              ),
            ),
          ),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.blue),
            ),
            onPressed: () => login(),
            child: Text(
              'Login',
              style: const TextStyle(color: Colors.white),
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          GestureDetector(
            onTap: () => Get.to(regispage()),
            child: Text(
              'Register',
              style: const TextStyle(),
            ),
          )
        ],
      ),
    );
  }
}
