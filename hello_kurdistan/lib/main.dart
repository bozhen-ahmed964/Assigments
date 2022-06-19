import 'package:flutter/material.dart';

void main() {
  runApp(helloKurdistan());
}

class helloKurdistan extends StatefulWidget {
  const helloKurdistan({Key? key}) : super(key: key);

  @override
  State<helloKurdistan> createState() => _helloKurdistanState();
}

class _helloKurdistanState extends State<helloKurdistan> {
  String _image1 =
      'https://i.pinimg.com/originals/f3/c5/6f/f3c56f040ec8c416469d618442a43572.png';
  String _image2 =
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3IhkK_u1LbheH04PB_MYKSIsi5_N8YOrmlcNjuNxQHP_bUXGTrak_ZAsodYJ8QhXh0yU&usqp=CAU';
  String _image3 =
      'https://images.squarespace-cdn.com/content/v1/52d311f2e4b0c7203219d1cd/1442527167832-Q8LHW4TYCAWKSVP5FB85/image-asset.jpeg';
  String _setImage =
      '';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 67, 0, 125),
        appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.menu),
              onPressed: null,
            ),
            title: Text('Kurdistan'),
            backgroundColor: Color.fromARGB(255, 98, 0, 115)),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 300,
                  height: 250,
                  child: Image.network('$_setImage'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _setImage = _image1;
                    });
                  },
                  child: SizedBox(
                    width: 80,
                    height: 100,
                    child: Image.network('$_image1'),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _setImage = _image2;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: SizedBox(
                      width: 95,
                      height: 200,
                      child: Image.network('$_image2'),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _setImage = _image3;
                    });
                  },
                  child: SizedBox(
                    width: 80,
                    height: 100,
                    child: Image.network('$_image3'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
