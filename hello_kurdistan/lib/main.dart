import 'package:flutter/material.dart';

void main() {
  runApp(helloKurdistan());
 
}

class helloKurdistan extends StatelessWidget {
  const helloKurdistan({Key? key}) : super(key: key);
  @override
  
  Widget build(BuildContext context) {
    
    return const MaterialApp( 
      debugShowCheckedModeBanner : false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(0, 255, 255, 255),
        body: Center(
          child: Text('Bozhen Ahmed',
          style: TextStyle(color: Colors.amber)
          )
        ),
      ),
    );
  }
}
