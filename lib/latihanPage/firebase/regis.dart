// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:apk1/latihanPage/firebase/login.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class regispage extends StatefulWidget {
  @override
  State<regispage> createState() => _regispageState();
}

class _regispageState extends State<regispage> {
  final _fromkey = GlobalKey<FormState>();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _pw = TextEditingController();
  final TextEditingController _nim = TextEditingController();
  final TextEditingController _nama = TextEditingController();

  Future<dynamic> regis() async {
    if (_fromkey.currentState!.validate()) {
      try {
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: _email.text,
          password: _pw.text,
        );

        User? user = FirebaseAuth.instance.currentUser;
        await FirebaseFirestore.instance.collection('users').doc(user!.uid).set(
          {
            'uid': user.uid,
            'nama': _nama.text,
            'nim': _nim.text,
            'email': _email.text,
          },
        );

        showDialog(
          context: context,
          builder: (_) {
            return AlertDialog(
              content: Text('Login Berhasil'),
              actions: [
                TextButton(
                  onPressed: () => Get.to(firebase()),
                  child: Text('Ok'),
                ),
              ],
            );
          },
        );
      } catch (e) {
        print(e.toString());
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Container(
          height: Get.height,
          width: Get.width,
          padding: EdgeInsets.all(8),
          child: buildFromLogin(),
        ),
      ),
    );
  }

  Widget buildFromLogin() {
    return Form(
      key: _fromkey,
      child: Column(
        children: [
          TextFormField(
            controller: _nama,
            validator: (value) {
              if (value!.isEmpty) {
                return 'nama salah';
              }
            },
            scrollPadding: EdgeInsets.all(20),
            decoration: InputDecoration(
              hintText: 'Masukkan nama',
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
            controller: _nim,
            validator: (value) {
              if (value!.isEmpty) {
                return 'nim salah';
              }
            },
            scrollPadding: EdgeInsets.all(20),
            decoration: InputDecoration(
              hintText: 'Masukkan nim',
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
            onPressed: () => regis(),
            child: Text(
              'Regis',
              style: const TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
