import 'package:flutter/material.dart';

import 'package:get/get.dart';

class ProfileviewView extends GetView {
  const ProfileviewView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ProfileviewView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ProfileviewView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
