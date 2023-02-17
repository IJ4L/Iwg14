// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';

class listview extends StatelessWidget {
  const listview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) => Container(
          height: 150,
          width: double.infinity,
          color: Colors.blue,
          margin: EdgeInsets.symmetric(vertical: 5, horizontal: 16),
          child: Center(
            child: Text(
              '${index + 1}',
              style: const TextStyle(
                fontSize: 28,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
