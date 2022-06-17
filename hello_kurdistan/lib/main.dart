import 'package:flutter/material.dart';

void main() {
  runApp(helloKurdistan());
}

class helloKurdistan extends StatelessWidget {
  const helloKurdistan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.menu),
              onPressed: null,
            ),
            title: Text('Kurdistan'),
            backgroundColor: Color.fromARGB(255, 206, 64, 3)),
        body: Container(
          
          margin: EdgeInsets.symmetric(vertical: 200),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(30.0),
                child:
                    Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/3/35/Flag_of_Kurdistan.svg/1200px-Flag_of_Kurdistan.svg.png'),

              ),
              Text(
                'Hello Kurdistan',
                style: TextStyle(
                    fontFamily: 'Helvetica',
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 24.0),
              )
            ],
          ),
        ),
      ),
    );
  }
}
