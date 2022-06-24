import 'package:flutter/material.dart';
import 'package:test/source/screens/screen/info_screen.dart';
import '../../data/mockdata.dart';

class MarvelHeros extends StatelessWidget {
  const MarvelHeros({Key? key}) : super(key: key);

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
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: mockData.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: (() {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => InfoScreen(
                                name: mockData[index]['name'].toString(),
                                imageURL: mockData[index]['profileImage'].toString(),
                                description:mockData[index]['description'].toString(),
                                ),
                          ),
                        );
                      }),
                      child: Container(
                        padding: EdgeInsets.all(10.0),
                        child: Container(
                          height: 200,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 0, 0, 0),
                            borderRadius: BorderRadius.circular(25.0),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                mockData[index]["profileImage"].toString(),
                              ),
                            ),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                  padding: const EdgeInsets.all(0.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SizedBox(width: 25),
                                      Text(
                                        mockData[index]["id"].toString(),
                                        style: TextStyle(
                                          fontFamily: 'Helvetica',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 26.0,
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                        ),
                                      ),
                                      SizedBox(width: 25),
                                      Text(
                                        mockData[index]["name"].toString(),
                                        style: TextStyle(
                                          fontFamily: 'Helvetica',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 24.0,
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                        ),
                                      ),
                                    ],
                                  )),
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
