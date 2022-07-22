import 'package:flutter/material.dart';

class ListDataShow extends StatefulWidget {
  ListDataShow({Key? key}) : super(key: key);

  @override
  State<ListDataShow> createState() => _ListDataShowState();
}

class _ListDataShowState extends State<ListDataShow> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top : 19.0),
      child: Container(
        width : 350,
        height : 300,
       decoration: BoxDecoration(
          color: Color.fromARGB(255, 161, 161, 161),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
        // child: ListView.builder(
        //   itemCount : 
        //   itemBuilder: itemBuilder
        //   ),
      ),
    );
  }
}
