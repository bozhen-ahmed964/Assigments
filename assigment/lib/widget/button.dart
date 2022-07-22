import 'package:flutter/material.dart';

class Buttons extends StatefulWidget {
  Buttons({Key? key}) : super(key: key);

  @override
  State<Buttons> createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
            onPressed: () {},
            child: Text('Add'),
            style: ElevatedButton.styleFrom(
              primary: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
           ElevatedButton(
            onPressed: () {},
            child: Text('Update'),
            style: ElevatedButton.styleFrom(
              primary: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
           ElevatedButton(
            onPressed: () {},
            child: Text('Read'),
            style: ElevatedButton.styleFrom(
              primary: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
           ElevatedButton(
            onPressed: () {},
            child: Text('Remove'),
            style: ElevatedButton.styleFrom(
              primary: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
        ],
      ),
    );
  }
}
