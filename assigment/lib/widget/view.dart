import 'package:flutter/material.dart';
import 'package:test/widget/data_show.dart';
import 'package:test/widget/label.dart';
import 'package:test/widget/list_data_show.dart';

class ViewData extends StatefulWidget {
  ViewData({Key? key}) : super(key: key);

  @override
  State<ViewData> createState() => _ViewDataState();
}

class _ViewDataState extends State<ViewData> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 91, 91, 91),
          borderRadius: BorderRadius.circular(20),
        ),
        height: 400,
        width: 350,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          
          children: [
            LabelShow(),
            DataShow(),
            ListDataShow(),
          ],
        ),
      ),
    );
  }
}
