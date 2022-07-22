import 'package:flutter/material.dart';
import 'package:test/widget/button.dart';
import 'package:test/widget/textfield.dart';

import '../widget/view.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Database'),
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          ViewData(),
          TextFieldInput(),
          Buttons(),
        ],
      ),
    );
  }
}
