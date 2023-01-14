// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  get color => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Welcome'),
        ),
        body: Center(
          child: Container(
            height: 100,
            width: 100,
            color: Color.fromARGB(255, 112, 113, 74),
            child: Center(
                child: Text(
              'Hello World',
              style: TextStyle(
                color: Color.fromARGB(255, 9, 231, 139),
              ),
            )),
          ),
        ),
      ),
    );
  }
}
