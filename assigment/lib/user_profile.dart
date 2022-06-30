import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 234, 234, 234),
        body: Column(
          children: [
            //sizedbox for space
            SizedBox(
              height: 50,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // user profile image
                CircleAvatar(
                  maxRadius: 100,
                  backgroundImage: NetworkImage(
                      'https://images.mubicdn.net/images/cast_member/4189/cache-5292-1614585191/image-w856.jpg?size=800x'),
                ),
              ],
            ),
            //sizedbox for space
            SizedBox(
              height: 15,
            ),
            //username text
            Text(
              'Al Pachino',
              style: TextStyle(
                fontFamily: 'roboto',
                fontSize: 24,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),

            SizedBox(
              height: 5,
            ),

            //description text
            Container(
              width: 300,
              child: Text(
                textAlign: TextAlign.center,
                " 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley'",
                style: TextStyle(
                  fontFamily: 'roboto',
                  fontSize: 14,
                ),
              ),
            ),

            SizedBox(
              height: 20,
            ),

            // buttons
            Column(
              children: [
                // button container
                GestureDetector(
                  onTap:  () async {
                    const url = 'https://www.linkedin.com/in/bozhen-ahmed/';
                    // ignore: deprecated_member_use
                    if (await canLaunch(url)) {
                      // ignore: deprecated_member_use
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  } ,
                  child: Container(
                    padding: EdgeInsets.all(0.8),
                    width: 350,
                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Color.fromARGB(183, 1, 93, 193),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        //icons
                        FaIcon(FontAwesomeIcons.linkedin,
                            color: Colors.black, size: 30),
                        SizedBox(width: 25),
                        //text
                        Text(
                          textDirection: TextDirection.rtl,
                          'LinkedIn Profile',
                          style: TextStyle(fontFamily: 'roboto', fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                GestureDetector(
                   onTap: () async {
                    const url = 'https://www.facebook.com';
                    // ignore: deprecated_member_use
                    if (await canLaunch(url)) {
                      // ignore: deprecated_member_use
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                  child: Container(
                    padding: EdgeInsets.all(0.8),
                    width: 350,
                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Color.fromARGB(183, 1, 193, 187),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        //icons
                        FaIcon(FontAwesomeIcons.facebook,
                            color: Colors.black, size: 30),
                        SizedBox(width: 25),
                        //text
                        Text(
                          textDirection: TextDirection.rtl,
                          'Facebook Profile',
                          style: TextStyle(fontFamily: 'roboto', fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                GestureDetector(
                   onTap: () async {
                    const url = 'https://www.instagram.com';
                    // ignore: deprecated_member_use
                    if (await canLaunch(url)) {
                      // ignore: deprecated_member_use
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                  child: Container(
                    padding: EdgeInsets.all(0.8),
                    width: 350,
                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Color.fromARGB(183, 222, 77, 87),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        //icons
                        FaIcon(FontAwesomeIcons.instagram,
                            color: Colors.black, size: 30),
                        SizedBox(width: 25),
                        //text
                        Text(
                          textDirection: TextDirection.rtl,
                          'Instagram Profile',
                          style: TextStyle(fontFamily: 'roboto', fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                GestureDetector(
                   onTap: () async {
                    const url = 'https://www.google.com';
                    // ignore: deprecated_member_use
                    if (await canLaunch(url)) {
                      // ignore: deprecated_member_use
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                  child: Container(
                    padding: EdgeInsets.all(0.8),
                    width: 350,
                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Color.fromARGB(183, 225, 222, 7),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        //icons
                        FaIcon(FontAwesomeIcons.chrome,
                            color: Colors.black, size: 30),
                        SizedBox(width: 25),
                        //text
                        Text(
                          textDirection: TextDirection.rtl,
                          'My Website',
                          style: TextStyle(fontFamily: 'roboto', fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    onPressed:(){}
                    ,
                    icon: FaIcon(FontAwesomeIcons.whatsapp),
                    iconSize: 36,
                    color: Color.fromARGB(255, 13, 185, 21)),
                Padding(
                  padding: const EdgeInsets.all(9.0),
                  child: IconButton(
                      onPressed: () {},
                      icon: FaIcon(FontAwesomeIcons.message),
                      iconSize: 32,
                      color: Color.fromARGB(255, 0, 0, 0)),
                ),
                IconButton(
                    onPressed: () {},
                    icon: FaIcon(FontAwesomeIcons.rocketchat),
                    iconSize: 36,
                    color: Color.fromARGB(255, 0, 85, 11)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
