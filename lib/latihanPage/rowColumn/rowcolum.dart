// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class rowColum extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const SizedBox(
                height: 20.0,
              ),
              Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.blueAccent.withOpacity(0.2),
                  border: Border.all(color: Colors.black),
                ),
                child: Center(
                  child: Text(
                    'PIZZA WITH EXTRA CHESEE',
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              Container(
                height: Get.height * 0.3,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.blueAccent.withOpacity(0.2),
                  border: Border.all(color: Colors.black),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('pasta tomat 1 siung bawang putih, cincang halus'),
                    Text('sdt gula 350-380 gram tepung terigu'),
                    Text('protein tinggi 1/2 sdt garam 1 sdm'),
                    Text('minyak zaitun 112 gram tomato puree 2 sdm'),
                    Text('1 sdm basil segar, cincang 113 gram keju mozzarella'),
                    Text('7 gram ragi kering 237 ml air hangat 1')
                  ],
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.blueAccent.withOpacity(0.2),
                  border: Border.all(color: Colors.black),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.star),
                        Icon(Icons.star),
                        Icon(Icons.star),
                        Icon(Icons.star),
                        Icon(Icons.star),
                      ],
                    ),
                    Text(
                      '218 REVIEW',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              Container(
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.blueAccent.withOpacity(0.2),
                  border: Border.all(color: Colors.black),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.book),
                          Text('PREP'),
                          Text('25 MIN')
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.call),
                          Text('Number'),
                          Text('08****')
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.shop),
                          Text('Gofod'),
                          Text('Pizza Hut')
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
