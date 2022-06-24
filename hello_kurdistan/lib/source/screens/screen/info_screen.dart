import 'package:flutter/material.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen(
      {Key? key,
      required this.imageURL,
      required this.name,
      required this.description})
      : super(key: key);

  final String imageURL;
  final String name;
  final String description;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 35, 35, 35),
          elevation: 0,
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_outlined, size: 26),
          ),
          title: Text(
            'Marvel Heros',
            style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontSize: 26.0,
                fontWeight: FontWeight.bold),
          ),
        ),
        body : Column(
          //mainAxisAlignment: MainAxisAlignment.start,
          
         children:[
         Image.network(imageURL),
          SizedBox(height:10),
           Text(
              name,
              style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 26.0,
                  fontWeight: FontWeight.bold),

            ),
            SizedBox(height: 10),
             Text(
              description,
              style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 16.0,
                 
            ),
             ),
         ],
        ),
      ),
    );
  }
}
